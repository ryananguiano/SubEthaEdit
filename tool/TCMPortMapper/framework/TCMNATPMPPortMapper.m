//
//  TCMNATPMPPortMapper.m
//  PortMapper
//
//  Created by Martin Pittenauer on 15.01.08.
//  Copyright 2008 TheCodingMonkeys. All rights reserved.
//

#import "TCMNATPMPPortMapper.h"
#import "NSNotificationAdditions.h"

NSString * const TCMNATPMPPortMapperDidFailNotification = @"TCMNATPMPPortMapperDidFailNotification";
NSString * const TCMNATPMPPortMapperDidGetExternalIPAddressNotification = @"TCMNATPMPPortMapperDidGetExternalIPAddressNotification";
// these notifications come in pairs. TCMPortmapper must reference count them and unify them to a notification pair that does not need to be reference counted
NSString * const TCMNATPMPPortMapperDidBeginWorkingNotification =@"TCMNATPMPPortMapperDidBeginWorkingNotification";
NSString * const TCMNATPMPPortMapperDidEndWorkingNotification   =@"TCMNATPMPPortMapperDidEndWorkingNotification";

static TCMNATPMPPortMapper *S_sharedInstance;

@implementation TCMNATPMPPortMapper
+ (TCMNATPMPPortMapper *)sharedInstance
{
    if (!S_sharedInstance) {
        S_sharedInstance = [self new];
    }
    return S_sharedInstance;
}

- (id)init {
    if (S_sharedInstance) {
        [self dealloc];
        return S_sharedInstance;
    }
    if ((self=[super init])) {
        natPMPThreadIsRunningLock = [NSLock new];
    }
    return self;
}

- (void)dealloc {
    [natPMPThreadIsRunningLock release];
    [super dealloc];
}

- (void)stop {
    // TODO: remove listening for ExternalIPChhanges (have to implement them first also)
    if ([_updateTimer isValid]) {
        [_updateTimer invalidate];
        [_updateTimer release];
        _updateTimer = nil;
    }

    [self updatePortMappings];
}

- (void)refresh {
    // Run externalipAddress in Thread
    
    if ([natPMPThreadIsRunningLock tryLock]) {
        _updateInterval = 3600 / 2.;
        IPAddressThreadShouldQuit=NO;
        UpdatePortMappingsThreadShouldQuit = NO;
        runningThreadID = TCMExternalIPThreadID;
        [NSThread detachNewThreadSelector:@selector(refreshExternalIPInThread) toTarget:self withObject:nil];
        NSLog(@"%s detachedThread",__FUNCTION__);
    } else  {
        if (runningThreadID == TCMExternalIPThreadID) {
            IPAddressThreadShouldQuit=YES;
            NSLog(@"%s thread should quit",__FUNCTION__);
        } else if (runningThreadID == TCMUpdatingMappingThreadID) {
            UpdatePortMappingsThreadShouldQuit = YES;
        }
    }

}

- (void)adjustUpdateTimer {
    if ([_updateTimer isValid]) {
        [_updateTimer invalidate];
    }
    [_updateTimer autorelease];
    _updateTimer = [[NSTimer scheduledTimerWithTimeInterval:_updateInterval target:self selector:@selector(updatePortMappings) userInfo:nil repeats:NO] retain];
}

/*

Standardablauf:

- refresh -> löst einen Thread mit refreshExternalIPInThread aus -> am erfolgreichen ende dieses threads wird ein updatePortMappings auf dem mainthread aufgerufen
  - Fall 1: nichts läuft bereits -> alles ist gut
  - Fall 2: ein thread mit refreshExternalIPInThread läuft -> dieser Thread wird abgebrochen und danach erneut refresh aufgerufen
  - Fall 3: ein thread mit updatePortMappingsInThread läuft -> der updatePortMappingsInThread sollte abgebrochen werden, und danach ein refresh aufgerufen werden

- updatePortMappings -> löst einen Thread mit updatePortMappings aus -> am erfolgreichen ende dieses Threads wird ein adjustUpdateTimer auf dem mainthread aufgerufen
  - Fall 1: nichts läuft bereits -> alles ist gut
  - Fall 2: ein refreshExternalIPInThread läuft -> alles wird gut, wir tun nix
  - Fall 3: ein thread mit updatePortMappingsInThread läuft -> updatePortMappingsInThread sollte von vorne beginnen

*/

- (void)updatePortMappings {
    if ([natPMPThreadIsRunningLock tryLock]) {
        UpdatePortMappingsThreadShouldRestart=NO;
        runningThreadID = TCMUpdatingMappingThreadID;
        [NSThread detachNewThreadSelector:@selector(updatePortMappingsInThread) toTarget:self withObject:nil];
        NSLog(@"%s detachedThread",__FUNCTION__);
    } else  {
        if (runningThreadID == TCMUpdatingMappingThreadID) {
            UpdatePortMappingsThreadShouldRestart = YES;
        }
    }
}

- (BOOL)applyPortMapping:(TCMPortMapping *)aPortMapping remove:(BOOL)shouldRemove natpmp:(natpmp_t *)aNatPMPt {
	natpmpresp_t response;
	int r;
	//int sav_errno;
	struct timeval timeout;
	fd_set fds;
	
	#warning FIXME protocol has to be configured
	r = sendnewportmappingrequest(aNatPMPt, NATPMP_PROTOCOL_TCP, [aPortMapping privatePort],[aPortMapping desiredPublicPort], shouldRemove?0:3600);
	//if(r < 0) return 1;
	if (!shouldRemove) [aPortMapping setMappingStatus:TCMPortMappingStatusTrying];
	do {
		FD_ZERO(&fds);
		FD_SET(aNatPMPt->s, &fds);
		getnatpmprequesttimeout(aNatPMPt, &timeout);
		select(FD_SETSIZE, &fds, NULL, NULL, &timeout);
		r = readnatpmpresponseorretry(aNatPMPt, &response);
	} while(r==NATPMP_TRYAGAIN);
	
	//if(r<0) return 1;
	if (r<0) {
	   [aPortMapping setMappingStatus:TCMPortMappingStatusUnmapped];
	   return NO;
    }
	// update PortMapping
	if (shouldRemove) {
	   [aPortMapping setMappingStatus:TCMPortMappingStatusUnmapped];
	} else {
	   _updateInterval = MIN(_updateInterval,response.newportmapping.lifetime/2.);
	   if (_updateInterval < 60.) {
	       NSLog(@"%s caution - new port mapping had a lifetime < 120. : %u - %@",__FUNCTION__,response.newportmapping.lifetime, aPortMapping);
	       _updateInterval = 60.;
	   }
	   [aPortMapping setPublicPort:response.newportmapping.mappedpublicport];
	   [aPortMapping setMappingStatus:TCMPortMappingStatusMapped];
	}
	
	/* TODO : check response.type ! */
	// printf("Mapped public port %hu to localport %hu liftime %u\n", response.newportmapping.mappedpublicport, response.newportmapping.privateport, response.newportmapping.lifetime);
	//printf("epoch = %u\n", response.epoch);
	return YES;
}

- (void)updatePortMappingsInThread {
    NSAutoreleasePool *pool = [NSAutoreleasePool new];
    [[NSNotificationCenter defaultCenter] postNotificationOnMainThreadWithName:TCMNATPMPPortMapperDidBeginWorkingNotification object:self];
    
    natpmp_t natpmp;
    initnatpmp(&natpmp);
    
    NSMutableSet *mappingsSet = [[TCMPortMapper sharedInstance] removeMappingQueue];
    
    while (!UpdatePortMappingsThreadShouldQuit && !UpdatePortMappingsThreadShouldRestart) {
        TCMPortMapping *mappingToRemove=nil;
        
        @synchronized (mappingsSet) {
            mappingToRemove = [mappingsSet anyObject];
        }
        
        if (!mappingToRemove) break;
        
        if ([mappingToRemove mappingStatus] == TCMPortMappingStatusMapped) {
            [self applyPortMapping:mappingToRemove remove:YES natpmp:&natpmp];
        }
        
        @synchronized (mappingsSet) {
            [mappingsSet removeObject:mappingToRemove];
        }
        
    }    

    TCMPortMapper *pm=[TCMPortMapper sharedInstance];
    NSSet *mappingsToAdd = [pm portMappings];
    
    while (!UpdatePortMappingsThreadShouldQuit && !UpdatePortMappingsThreadShouldRestart) {
        TCMPortMapping *mappingToApply;
        @synchronized (mappingsToAdd) {
            mappingToApply = nil;
            NSEnumerator *mappings = [mappingsToAdd objectEnumerator];
            TCMPortMapping *mapping = nil;
            BOOL isRunning = [pm isRunning];
            while ((mapping = [mappings nextObject])) {
                if ([mapping mappingStatus] == TCMPortMappingStatusUnmapped && isRunning) {
                    mappingToApply = mapping;
                    break;
                } else if ([mapping mappingStatus] == TCMPortMappingStatusMapped && !isRunning) {
                    mappingToApply = mapping;
                    break;
                }
            }
        }
        
        if (!mappingToApply) break;
        
        if (![self applyPortMapping:mappingToApply remove:[pm isRunning]?NO:YES natpmp:&natpmp]) {
            [[NSNotificationCenter defaultCenter] postNotificationOnMainThread:[NSNotification notificationWithName:TCMNATPMPPortMapperDidFailNotification object:self]];
            break;
        };
    }
    closenatpmp(&natpmp);

    [natPMPThreadIsRunningLock performSelectorOnMainThread:@selector(unlock) withObject:nil waitUntilDone:YES];
    if (UpdatePortMappingsThreadShouldQuit) {
        [self performSelectorOnMainThread:@selector(refresh) withObject:nil waitUntilDone:NO];
    } else if (UpdatePortMappingsThreadShouldRestart) {
        [self performSelectorOnMainThread:@selector(updatePortMapping) withObject:nil waitUntilDone:NO];
    } else {
        if ([pm isRunning]) {
            [self performSelectorOnMainThread:@selector(adjustUpdateTimer) withObject:nil waitUntilDone:NO];
        }
    }
    [[NSNotificationCenter defaultCenter] postNotificationOnMainThreadWithName:TCMNATPMPPortMapperDidEndWorkingNotification object:self];
    [pool release];
}

- (void)refreshExternalIPInThread {
    
    NSAutoreleasePool *pool = [NSAutoreleasePool new];
    [[NSNotificationCenter defaultCenter] postNotificationOnMainThreadWithName:TCMNATPMPPortMapperDidBeginWorkingNotification object:self];
	natpmp_t natpmp;
	natpmpresp_t response;
	int r;
	struct timeval timeout;
	fd_set fds;
	BOOL didFail=NO;
	r = initnatpmp(&natpmp);
	if(r<0) {
	   didFail = YES;
	} else {
        r = sendpublicaddressrequest(&natpmp);
        if(r<0) {
            didFail = YES;
        } else {
            int count = 0;
            do {
                FD_ZERO(&fds);
                FD_SET(natpmp.s, &fds);
                getnatpmprequesttimeout(&natpmp, &timeout);
                NSLog(@"NATPMP refreshExternalIP try #%d",++count);
                select(FD_SETSIZE, &fds, NULL, NULL, &timeout);
                r = readnatpmpresponseorretry(&natpmp, &response);
                if (IPAddressThreadShouldQuit) {
                    NSLog(@"%s ----------------- thread quit prematurely",__FUNCTION__);
                    [natPMPThreadIsRunningLock performSelectorOnMainThread:@selector(unlock) withObject:nil waitUntilDone:YES];
                    [self performSelectorOnMainThread:@selector(refresh) withObject:nil waitUntilDone:0];
                    closenatpmp(&natpmp);
                    [pool release];
                    return;
                }
            } while(r==NATPMP_TRYAGAIN);
        
            if(r<0) {
               didFail = YES;
               NSLog(@"natpmp did time out");
            } else {
                /* TODO : check that response.type == 0 */
            
                NSString *ipString = [NSString stringWithFormat:@"%s", inet_ntoa(response.publicaddress.addr)];
                NSLog(@"%s found ipString:%@",__FUNCTION__,ipString);
                [[NSNotificationCenter defaultCenter] postNotificationOnMainThread:[NSNotification notificationWithName:TCMNATPMPPortMapperDidGetExternalIPAddressNotification object:self userInfo:[NSDictionary dictionaryWithObject:ipString forKey:@"externalIPAddress"]]];
            }
        }
    }
	closenatpmp(&natpmp);
    [natPMPThreadIsRunningLock performSelectorOnMainThread:@selector(unlock) withObject:nil waitUntilDone:YES];
    if (IPAddressThreadShouldQuit) {
        NSLog(@"%s thread quit prematurely",__FUNCTION__);
        [self performSelectorOnMainThread:@selector(refresh) withObject:nil waitUntilDone:0];
    } else {
        if (didFail) {
            [[NSNotificationCenter defaultCenter] postNotificationOnMainThread:[NSNotification notificationWithName:TCMNATPMPPortMapperDidFailNotification object:self]];
        } else {
            [self performSelectorOnMainThread:@selector(updatePortMappings) withObject:nil waitUntilDone:0];
        }
    }
    [[NSNotificationCenter defaultCenter] postNotificationOnMainThreadWithName:TCMNATPMPPortMapperDidEndWorkingNotification object:self];
    [pool release];
}


@end