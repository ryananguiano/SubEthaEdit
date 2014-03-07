//
//  SEEConnectionManager.h
//  SubEthaEdit
//
//  Original (InternetBrowserController.h) by Martin Ott on Wed Mar 03 2004.
//	Updated my Michael Ehrmann on Fri Feb 21 2014.
//  Copyright (c) 2004-2014 TheCodingMonkeys. All rights reserved.
//           

#import <Foundation/Foundation.h>

@interface SEEConnectionManager : NSObject

@property (nonatomic, strong) NSMutableArray *entries;

+ (SEEConnectionManager *)sharedInstance;

+ (BOOL)invitePeopleFromPasteboard:(NSPasteboard *)aPasteboard intoDocumentGroupURL:(NSURL *)aURL;

- (void)connectToURL:(NSURL *)anURL;
- (void)connectToAddress:(NSString *)address;

- (void)clear;

@end