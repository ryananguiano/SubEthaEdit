FasdUAS 1.101.10   ��   ��    k             l     ��  ��    J D$Id: OpenEnvironment.applescript,v 1.4 2008/02/17 11:24:09 mjb Exp $     � 	 	 � $ I d :   O p e n E n v i r o n m e n t . a p p l e s c r i p t , v   1 . 4   2 0 0 8 / 0 2 / 1 7   1 1 : 2 4 : 0 9   m j b   E x p   $   
  
 l     ��������  ��  ��        l      ��  ��   -'
Copyright (c) 2008, Michael J. Barber

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject
to the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR
ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
     �  N 
 C o p y r i g h t   ( c )   2 0 0 8 ,   M i c h a e l   J .   B a r b e r 
 
 P e r m i s s i o n   i s   h e r e b y   g r a n t e d ,   f r e e   o f   c h a r g e ,   t o   a n y   p e r s o n   o b t a i n i n g 
 a   c o p y   o f   t h i s   s o f t w a r e   a n d   a s s o c i a t e d   d o c u m e n t a t i o n   f i l e s   ( t h e 
 " S o f t w a r e " ) ,   t o   d e a l   i n   t h e   S o f t w a r e   w i t h o u t   r e s t r i c t i o n ,   i n c l u d i n g 
 w i t h o u t   l i m i t a t i o n   t h e   r i g h t s   t o   u s e ,   c o p y ,   m o d i f y ,   m e r g e ,   p u b l i s h , 
 d i s t r i b u t e ,   s u b l i c e n s e ,   a n d / o r   s e l l   c o p i e s   o f   t h e   S o f t w a r e ,   a n d   t o 
 p e r m i t   p e r s o n s   t o   w h o m   t h e   S o f t w a r e   i s   f u r n i s h e d   t o   d o   s o ,   s u b j e c t 
 t o   t h e   f o l l o w i n g   c o n d i t i o n s : 
 
 T h e   a b o v e   c o p y r i g h t   n o t i c e   a n d   t h i s   p e r m i s s i o n   n o t i c e   s h a l l   b e 
 i n c l u d e d   i n   a l l   c o p i e s   o r   s u b s t a n t i a l   p o r t i o n s   o f   t h e   S o f t w a r e . 
 
 T H E   S O F T W A R E   I S   P R O V I D E D   " A S   I S " ,   W I T H O U T   W A R R A N T Y   O F   A N Y   K I N D , 
 E X P R E S S   O R   I M P L I E D ,   I N C L U D I N G   B U T   N O T   L I M I T E D   T O   T H E   W A R R A N T I E S   O F 
 M E R C H A N T A B I L I T Y ,   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A N D   N O N I N F R I N G E M E N T . 
 I N   N O   E V E N T   S H A L L   T H E   A U T H O R S   O R   C O P Y R I G H T   H O L D E R S   B E   L I A B L E   F O R 
 A N Y   C L A I M ,   D A M A G E S   O R   O T H E R   L I A B I L I T Y ,   W H E T H E R   I N   A N   A C T I O N   O F 
 C O N T R A C T ,   T O R T   O R   O T H E R W I S E ,   A R I S I N G   F R O M ,   O U T   O F   O R   I N   C O N N E C T I O N 
 W I T H   T H E   S O F T W A R E   O R   T H E   U S E   O R   O T H E R   D E A L I N G S   I N   T H E   S O F T W A R E . 
      l     ��������  ��  ��        l     ����  I     �������� 20 openenvironmentsettings openEnvironmentSettings��  ��  ��  ��        l     ��������  ��  ��        i         I      �������� 0 seescriptsettings  ��  ��    L     	   K        ��  �� 0 displayname displayName  m         � ! ! " C u s t o m i z e   M o d e . . .  �� " #�� $0 shortdisplayname shortDisplayName " m     $ $ � % %  E n v i r o n m e n t # �� &���� 0 incontextmenu inContextMenu & m     ' ' � ( (  n o��     ) * ) l     ��������  ��  ��   *  + , + l     �� - .��   -   SubEthaEdit Tools    . � / / $   S u b E t h a E d i t   T o o l s ,  0 1 0 l     �� 2 3��   2 M G $Id: SubEthaEditTools.m4pplescript,v 1.6 2008/02/17 12:29:00 mjb Exp $    3 � 4 4 �   $ I d :   S u b E t h a E d i t T o o l s . m 4 p p l e s c r i p t , v   1 . 6   2 0 0 8 / 0 2 / 1 7   1 2 : 2 9 : 0 0   m j b   E x p   $ 1  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9   Environment management    : � ; ; .   E n v i r o n m e n t   m a n a g e m e n t 8  < = < l     ��������  ��  ��   =  > ? > i     @ A @ I      �������� "0 modeenvironment modeEnvironment��  ��   A I    !�� B C�� 0 join   B J      D D  E F E m      G G � H H r e x p o r t   _ _ C F _ U S E R _ T E X T _ E N C O D I N G = 0 x 1 F 5 : 0 x 8 0 0 0 1 0 0 : 0 x 8 0 0 0 1 0 0 ; F  I J I m     K K � L L 4 e x p o r t   S E E _ M O D E _ R E S O U R C E S = J  M N M I   ���� O�� $0 doublequotedform doubleQuotedForm��   O �� P��
�� 
for  P I    	�������� 0 moderesources modeResources��  ��  ��   N  Q R Q m     S S � T T  ;   R  U�� U I   ���� V�� "0 readenvironment readEnvironment��   V �� W��
�� 
outo W I    �������� *0 environmentfilepath environmentFilePath��  ��  ��  ��   C �� X��
�� 
by   X m     Y Y � Z Z  ��   ?  [ \ [ l     ��������  ��  ��   \  ] ^ ] i     _ ` _ I      �������� 0 moderesources modeResources��  ��   ` O     a b a e     c c l    d���� d n     e f e 1   
 ��
�� 
pMrp f l   
 g���� g n    
 h i h m    
��
�� 
Mode i l    j���� j 4   �� k
�� 
docu k m    ���� ��  ��  ��  ��  ��  ��   b m      l l�                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��   ^  m n m l     ��������  ��  ��   n  o p o i    q r q I      �������� 20 openenvironmentsettings openEnvironmentSettings��  ��   r I    ���� s�� "0 openenvironment openEnvironment��   s �� t u
�� 
at   t I    �������� *0 environmentfilepath environmentFilePath��  ��   u �� v���� 60 settingdefaultenvironment settingDefaultEnvironment v m    	��
�� boovtrue��   p  w x w l     ��������  ��  ��   x  y z y i     { | { I      �������� *0 environmentfilepath environmentFilePath��  ��   | k     $ } }  ~  ~ O     � � � r     � � � n     � � � 1   
 ��
�� 
pnam � l   
 ����� � n    
 � � � m    
��
�� 
Mode � l    ����� � 4   �� �
�� 
docu � m    ���� ��  ��  ��  ��   � o      ���� 0 modename modeName � m      � ��                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��     ��� � I   $�� � ��� 0 join   � J     � �  � � � I   �� � �
�� .earsffdralis        afdr � m    ��
�� afdrpref � �� � �
�� 
from � m    ��
�� fldmfldu � �� ���
�� 
rtyp � m    ��
�� 
TEXT��   �  � � � m     � � � � � : d e . c o d i n g m o n k e y s . S u b E t h a E d i t . �  � � � o    ���� 0 modename modeName �  ��� � m     � � � � � $ _ e n v i r o n m e n t . p l i s t��   � �� ���
�� 
by   � m      � � � � �  ��  ��   z  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � $  Manipulation of document text    � � � � <   M a n i p u l a t i o n   o f   d o c u m e n t   t e x t �  � � � l     ��������  ��  ��   �  � � � i    � � � I      �������� .0 completeselectedlines completeSelectedLines��  ��   � I    	���� ��� "0 extendselection extendSelection��   � � � ��  0 extendingfront extendingFront � m    �~
�~ boovtrue � �} ��|�} 0 extendingend extendingEnd�|   �  � � � l     �{�z�y�{  �z  �y   �  � � � i     � � � I      �x�w�v�x 0 selectiontext selectionText�w  �v   � O     � � � e     � � l    ��u�t � n     � � � 1   
 �s
�s 
pTxt � l   
 ��r�q � 1    
�p
�p 
pSel�r  �q  �u  �t   � l     ��o�n � n      � � � 4   �m �
�m 
docu � m    �l�l  � m      � ��                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  �o  �n   �  � � � l     �k�j�i�k  �j  �i   �  � � � i    � � � I      �h�g ��h $0 setselectiontext setSelectionText�g   � �f ��e
�f 
to   � o      �d�d 0 newtext newText�e   � O     � � � r     � � � l    ��c�b � o    �a�a 0 newtext newText�c  �b   � l      ��`�_ � n       � � � 1    �^
�^ 
pTxt � l    ��]�\ � n     � � � 1   	 �[
�[ 
pSel � l   	 ��Z�Y � 4   	�X �
�X 
docu � m    �W�W �Z  �Y  �]  �\  �`  �_   � m      � ��                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��   �  � � � l     �V�U�T�V  �U  �T   �  � � � i     # � � � I      �S�R ��S  0 selectionrange selectionRange�R   � �Q � ��Q  0 extendingfront extendingFront � o      �P�P &0 shouldextendfront shouldExtendFront � �O ��N�O 0 extendingend extendingEnd � o      �M�M "0 shouldextendend shouldExtendEnd�N   � O     g � � � Z    f � � � � � F     � � � o    �L�L &0 shouldextendfront shouldExtendFront � o    �K�K "0 shouldextendend shouldExtendEnd � e    % � � J    % � �  � � � n     � � � 1    �J
�J 
pIdS � l    ��I�H � n     � � � 4   �G �
�G 
cpar � m    �F�F  � l    ��E�D � 1    �C
�C 
pSel�E  �D  �I  �H   �  ��B � n    # � � � 1     "�A
�A 
pIdN � l     ��@�? � n      � � � 4    �> �
�> 
cpar � m    �=�=�� � l    ��<�; � 1    �:
�: 
pSel�<  �;  �@  �?  �B   �    o   ( )�9�9 &0 shouldextendfront shouldExtendFront  e   , = J   , =  n   , 5	 1   2 4�8
�8 
pIdS	 l  , 2
�7�6
 n   , 2 4  / 2�5
�5 
cpar m   0 1�4�4  l  , /�3�2 1   , /�1
�1 
pSel�3  �2  �7  �6   �0 n   5 ; 1   8 :�/
�/ 
pIdN l  5 8�.�- 1   5 8�,
�, 
pSel�.  �-  �0    o   @ A�+�+ "0 shouldextendend shouldExtendEnd �* e   D U J   D U  n   D J 1   G I�)
�) 
pIdS l  D G�(�' 1   D G�&
�& 
pSel�(  �'   �% n   J S 1   P R�$
�$ 
pIdN l  J P �#�"  n   J P!"! 4  M P�!#
�! 
cpar# m   N O� � ��" l  J M$��$ 1   J M�
� 
pSel�  �  �#  �"  �%  �*   � e   X f%% J   X f&& '(' n   X ^)*) 1   [ ]�
� 
pIdS* l  X [+��+ 1   X [�
� 
pSel�  �  ( ,�, n   ^ d-.- 1   a c�
� 
pIdN. l  ^ a/��/ 1   ^ a�
� 
pSel�  �  �   � l    0��0 n     121 4   �3
� 
docu3 m    �� 2 m     44�                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  �  �   � 565 l     ����  �  �  6 787 i  $ '9:9 I      ��;� &0 setselectionrange setSelectionRange�  ; �
<�	
�
 
to  < o      �� 0 newrange newRange�	  : O     =>= r    ?@? o    �� 0 newrange newRange@ 1    �
� 
pSel> l    A��A n     BCB 4   �D
� 
docuD m    �� C m     EE�                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  �  �  8 FGF l     �� ���  �   ��  G HIH i   ( +JKJ I      ����L�� .0 extendedselectiontext extendedSelectionText��  L ��MN��  0 extendingfront extendingFrontM o      ���� &0 shouldextendfront shouldExtendFrontN ��O���� 0 extendingend extendingEndO o      ���� "0 shouldextendend shouldExtendEnd��  K k     7PP QRQ r     STS I     ����U��  0 selectionrange selectionRange��  U ��VW��  0 extendingfront extendingFrontV o    ���� &0 shouldextendfront shouldExtendFrontW ��X���� 0 extendingend extendingEndX o   	 
���� "0 shouldextendend shouldExtendEnd��  T J    YY Z[Z o    ���� 0 	startchar 	startChar[ \��\ o    ���� 0 nextchar nextChar��  R ]��] O    7^_^ e   % 6`` c   % 6aba l  % 4c����c n   % 4ded 1   2 4��
�� 
pTxte 7 % 2��fg
�� 
cha f o   * ,���� 0 	startchar 	startCharg l  - 1h����h \   - 1iji o   . /���� 0 nextchar nextCharj m   / 0���� ��  ��  ��  ��  b m   4 5��
�� 
ctxt_ l   "k����k n    "lml 4   "��n
�� 
docun m     !���� m m    oo�                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  ��  ��  ��  I pqp l     ��������  ��  ��  q rsr i  , /tut I      ����v�� "0 extendselection extendSelection��  v ��wx��  0 extendingfront extendingFrontw o      ���� &0 shouldextendfront shouldExtendFrontx ��y���� 0 extendingend extendingEndy o      ���� "0 shouldextendend shouldExtendEnd��  u k     *zz {|{ r     }~} l     ���� I     �������  0 selectionrange selectionRange��  � ������  0 extendingfront extendingFront� o    ���� &0 shouldextendfront shouldExtendFront� ������� 0 extendingend extendingEnd� o   	 
���� "0 shouldextendend shouldExtendEnd��  ��  ��  ~ J    �� ��� o    ���� 0 	startchar 	startChar� ���� o    ���� 0 nextchar nextChar��  | ���� I   *������� &0 setselectionrange setSelectionRange��  � �����
�� 
to  � J     &�� ��� o     !���� 0 	startchar 	startChar� ���� \   ! $��� o   ! "���� 0 nextchar nextChar� m   " #���� ��  ��  ��  s ��� l     ��������  ��  ��  � ��� l     ������  � * $ Manipulation of document properties   � ��� H   M a n i p u l a t i o n   o f   d o c u m e n t   p r o p e r t i e s� ��� l     ��������  ��  ��  � ��� i  0 3��� I      ������� "0 checksavestatus checkSaveStatus��  � ������� 0 updating  � o      ���� 0 
shouldsave 
shouldSave��  � O     D��� k    C�� ��� Z    ������� H    �� l   ������ I   �����
�� .coredoexbool        obj � n    
��� 1    
��
�� 
ppth� 4   ���
�� 
docu� m    ���� ��  ��  ��  � R    �����
�� .ascrerr ****      � ****� m    �� ��� F Y o u   h a v e   t o   s a v e   t h e   d o c u m e n t   f i r s t��  ��  ��  � ���� Z    C������� F    (��� o    ���� 0 
shouldsave 
shouldSave� l   &������ n    &��� 1   # %��
�� 
imod� 4   #���
�� 
docu� m   ! "���� ��  ��  � Q   + ?����� I  . 6�����
�� .coresavenull���     obj � 4  . 2���
�� 
docu� m   0 1���� ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��  � m     ���                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  � ��� l     ��������  ��  ��  � ��� i  4 7��� I      �������� *0 requirenewlineateof requireNewlineAtEOF��  ��  � O     "��� Z    !������ =   ��� m    �� ���  � l   ������ n    ��� 1    ��
�� 
pTxt� l   ������ 4   ���
�� 
cpar� m   
 ��������  ��  ��  ��  � l   ������  � ( " final line terminated, do nothing   � ��� D   f i n a l   l i n e   t e r m i n a t e d ,   d o   n o t h i n g��  � r    !��� o    ��
�� 
ret � l     ������ n      ��� 1     ��
�� 
pTxt� l   ������ n    ��� 4   ���
�� 
cins� m    ������� l   ����� 4   �~�
�~ 
cpar� m    �}�}����  �  ��  ��  ��  ��  � l    ��|�{� n     ��� 4   �z�
�z 
docu� m    �y�y � m     ���                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  �|  �{  � ��� l     �x�w�v�x  �w  �v  � ��� i   8 ;��� I      �u�t�s�u 0 documentpath documentPath�t  �s  � O    ��� e    �� l   ��r�q� n    ��� 1    
�p
�p 
ppth� l   ��o�n� 4   �m�
�m 
docu� m    �l�l �o  �n  �r  �q  � m     ���                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  � ��� l     �k�j�i�k  �j  �i  � ��� i   < ?��� I      �h�g�f�h 0 documentline documentLine�g  �f  � O    ��� e    �� l   ��e�d� n    ��� 1   
 �c
�c 
pSln� n    
   1    
�b
�b 
pSel 4   �a
�a 
docu m    �`�` �e  �d  � m     �                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  �  l     �_�^�]�_  �^  �]    l     �\	�\     String Utilities   	 �

 "   S t r i n g   U t i l i t i e s  l     �[�[   G A $Id: StringTools.applescript,v 1.5 2008/02/17 08:56:05 mjb Exp $    � �   $ I d :   S t r i n g T o o l s . a p p l e s c r i p t , v   1 . 5   2 0 0 8 / 0 2 / 1 7   0 8 : 5 6 : 0 5   m j b   E x p   $  l     �Z�Y�X�Z  �Y  �X    i   @ C I      �W�W 0 replacement   o      �V�V 0 olddelim oldDelim �U
�U 
by   o      �T�T 0 newdelim newDelim �S�R
�S 
for  o      �Q�Q 0 sourcestring sourceString�R   L      I    �P�P 0 join   l    �O�N I    �M �M 
0 tokens   o     �L�L 0 sourcestring sourceString  �K!�J
�K 
btwn! o    �I�I 0 olddelim oldDelim�J  �O  �N   �H"�G
�H 
by  " o    	�F�F 0 newdelim newDelim�G   #$# l     �E�D�C�E  �D  �C  $ %&% i   D G'(' I      �B)*�B 
0 tokens  ) o      �A�A 0 str  * �@+�?
�@ 
btwn+ o      �>�> 0 
delimiters  �?  ( k     ,, -.- r     /0/ n     121 1    �=
�= 
txdl2 1     �<
�< 
ascr0 o      �;�; 0 oldtids oldTIDs. 343 r    565 o    �:�: 0 
delimiters  6 n      787 1    
�9
�9 
txdl8 1    �8
�8 
ascr4 9:9 r    ;<; n    =>= 2   �7
�7 
citm> o    �6�6 0 str  < o      �5�5 0 strtoks  : ?@? r    ABA o    �4�4 0 oldtids oldTIDsB n      CDC 1    �3
�3 
txdlD 1    �2
�2 
ascr@ E�1E L    FF o    �0�0 0 strtoks  �1  & GHG l     �/�.�-�/  �.  �-  H IJI i   H KKLK I      �,MN�, 0 join  M o      �+�+ 0 	tokenlist 	tokenListN �*O�)
�* 
by  O o      �(�( 0 	delimiter  �)  L k     PP QRQ r     STS n     UVU 1    �'
�' 
txdlV 1     �&
�& 
ascrT o      �%�% 0 oldtids oldTIDsR WXW r    YZY o    �$�$ 0 	delimiter  Z n      [\[ 1    
�#
�# 
txdl\ 1    �"
�" 
ascrX ]^] r    _`_ c    aba o    �!�! 0 	tokenlist 	tokenListb m    � 
�  
TEXT` o      �� 0 joinedstring joinedString^ cdc r    efe o    �� 0 oldtids oldTIDsf n      ghg 1    �
� 
txdlh 1    �
� 
ascrd i�i L    jj o    �� 0 joinedstring joinedString�  J klk l     ����  �  �  l mnm i   L Oopo I      ��q� $0 doublequotedform doubleQuotedForm�  q �r�
� 
for r o      �� 0 
basestring 
baseString�  p b     sts b     uvu 1     �
� 
quotv o    �� 0 
basestring 
baseStringt 1    �
� 
quotn wxw l     ����  �  �  x yzy i   P S{|{ I      �}~�  0 shelltransform shellTransform} o      �
�
 0 intext inText~ �	�
�	 
for  o      �� 0 	envstring 	envString� ���
� 
thru� o      �� 0 pipeline  � ���� *0 alteringlineendings alteringLineEndings� o      �� 0 altends altEnds�  | k     G�� ��� r     ��� I    ���� 0 join  � J     �� ��� o     �� 0 	envstring 	envString� ��� m    �� ���  p b p a s t e� ��� m    �� ���  |� �� � o    ���� 0 pipeline  �   � �����
�� 
by  � 1    ��
�� 
spac��  � o      ���� 0 shellscript  � ��� r    ��� I   ������
�� .JonsgClp****    ��� null��  ��  � l     ������ o      ���� 0 oldclipboard oldClipboard��  ��  � ��� I   �����
�� .JonspClpnull���     ****� l   ������ o    ���� 0 intext inText��  ��  ��  � ��� Q    ?���� r     )��� I    '����
�� .sysoexecTEXT���     TEXT� o     !���� 0 shellscript  � �����
�� 
alen� o   " #���� 0 altends altEnds��  � o      ���� 0 shellresponse  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� ����
�� 
errn� o      ���� 0 errnum errNum� �����
�� 
erob� o      ���� 0 	badobject 	badObject��  � k   1 ?�� ��� I  1 6�����
�� .JonspClpnull���     ****� l  1 2������ o   1 2���� 0 oldclipboard oldClipboard��  ��  ��  � ���� R   7 ?����
�� .ascrerr ****      � ****� o   = >���� 0 errmsg errMsg� ����
�� 
errn� o   9 :���� 0 errnum errNum� �����
�� 
erob� o   ; <���� 0 	badobject 	badObject��  ��  � ��� I  @ E�����
�� .JonspClpnull���     ****� l  @ A������ o   @ A���� 0 oldclipboard oldClipboard��  ��  ��  � ���� o   F G���� 0 shellresponse  ��  z ��� l     ��������  ��  ��  � ��� l     ������  � : 4 Handling of environment settings using a plist file   � ��� h   H a n d l i n g   o f   e n v i r o n m e n t   s e t t i n g s   u s i n g   a   p l i s t   f i l e� ��� l     ������  � L F $Id: EnvironmentPlist.applescript,v 1.1 2008/01/03 16:49:41 mjb Exp $   � ��� �   $ I d :   E n v i r o n m e n t P l i s t . a p p l e s c r i p t , v   1 . 1   2 0 0 8 / 0 1 / 0 3   1 6 : 4 9 : 4 1   m j b   E x p   $� ��� l     ��������  ��  ��  � ��� i  T W��� I      ������� 20 writedefaultenvironment writeDefaultEnvironment��  � �����
�� 
at  � o      ���� 0 envpath envPath��  � k     6�� ��� r     ��� I    ������
�� .JonsgClp****    ��� null��  ��  � o      ����  0 savedclipboard savedClipboard� ��� I   �����
�� .JonspClpnull���     ****� m    	�� ���z < ? x m l   v e r s i o n = " 1 . 0 "   e n c o d i n g = " U T F - 8 " ? > 
 < ! D O C T Y P E   p l i s t   P U B L I C   " - / / A p p l e   C o m p u t e r / / D T D   P L I S T   1 . 0 / / E N "   " h t t p : / / w w w . a p p l e . c o m / D T D s / P r o p e r t y L i s t - 1 . 0 . d t d " > 
 < p l i s t   v e r s i o n = " 1 . 0 " > 
 < d i c t / > 
 < / p l i s t >��  � ��� Q    0���� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� m    �� ���  p b p a s t e   >  � l   ������ n    ��� 1    ��
�� 
psxp� o    ���� 0 envpath envPath��  ��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� ����
�� 
errn� o      ���� 0 errnum errNum� �����
�� 
erob� o      ���� 0 	badobject 	badObject��  � k   " 0�� ��� I  " '�����
�� .JonspClpnull���     ****� l  " #������ o   " #����  0 savedclipboard savedClipboard��  ��  ��  � ���� R   ( 0����
�� .ascrerr ****      � ****� o   . /���� 0 errmsg errMsg� ����
�� 
errn� o   * +���� 0 errnum errNum� �����
�� 
erob� o   , -���� 0 	badobject 	badObject��  ��  � ���� I  1 6�����
�� .JonspClpnull���     ****� l  1 2������ o   1 2����  0 savedclipboard savedClipboard��  ��  ��  ��  � ��� l     ��������  ��  ��  �    i  X [ I      ������ "0 openenvironment openEnvironment��   ��
�� 
at   o      ���� 0 envfilepath envFilePath ������ 60 settingdefaultenvironment settingDefaultEnvironment o      ���� $0 shouldsetdefault shouldSetDefault��   O     8	 k    7

  Z    .���� H     l   ���� I   ����
�� .coredoexbool        obj  4    ��
�� 
file o    ���� 0 envfilepath envFilePath��  ��  ��   Z    *�� o    ���� $0 shouldsetdefault shouldSetDefault I   ���� 20 writedefaultenvironment writeDefaultEnvironment  f     ����
�� 
at   o    ���� 0 envfilepath envFilePath��  ��   R    *��
�� .ascrerr ****      � **** l  " )���� b   " ) b   " ' b   " % !  m   " #"" �## 6 C a n ' t   g e t   e n v i r o n m e n t   f i l e  ! 1   # $��
�� 
quot o   % &�� 0 envfilepath envFilePath 1   ' (�~
�~ 
quot��  ��   �}$�|
�} 
errn$ m     !�{�{�@�|  ��  ��   %�z% I  / 7�y&�x
�y .aevtodocnull  �    alis& 4   / 3�w'
�w 
file' o   1 2�v�v 0 envfilepath envFilePath�x  �z  	 m     ((�                                                                                  sevs   alis    �  Macintosh HD               ��W	H+     tSystem Events.app                                                ���f�W        ����  	                CoreServices    ��:�      �f�7       t   0   /  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   )*) l     �u�t�s�u  �t  �s  * +,+ i  \ _-.- I      �r�q/�r "0 readenvironment readEnvironment�q  / �p0�o
�p 
outo0 o      �n�n 	0 plist  �o  . k     11 232 I    �m�l4�m 0 readlistpair readListPair�l  4 �k5�j
�k 
outo5 o    �i�i 	0 plist  �j  3 6�h6 I   �g�f7�g &0 environmentstring environmentString�f  7 �e8�d
�e 
from8 1   
 �c
�c 
rslt�d  �h  , 9:9 l     �b�a�`�b  �a  �`  : ;<; i  ` c=>= I      �_�^?�_ 0 readlistpair readListPair�^  ? �]@�\
�] 
outo@ o      �[�[ 	0 plist  �\  > O     0ABA Z    /CD�ZEC I   �YF�X
�Y .coredoexbool        obj F 4    �WG
�W 
fileG o    �V�V 	0 plist  �X  D O    &HIH e    %JJ n    %KLK J    $MM NON 1    �U
�U 
pnamO P�TP 1     �S
�S 
valL�T  L 2    �R
�R 
pliiI 4    �QQ
�Q 
plifQ o    �P�P 	0 plist  �Z  E J   ) /RR STS J   ) +�O�O  T U�NU J   + -�M�M  �N  B m     VV�                                                                                  sevs   alis    �  Macintosh HD               ��W	H+     tSystem Events.app                                                ���f�W        ����  	                CoreServices    ��:�      �f�7       t   0   /  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  < WXW l     �L�K�J�L  �K  �J  X YZY i   d g[\[ I      �I�H]�I &0 environmentstring environmentString�H  ] �G^�F
�G 
from^ o      �E�E $0 keyvaluelistpair keyValueListPair�F  \ k     h__ `a` r     bcb o     �D�D $0 keyvaluelistpair keyValueListPairc J      dd efe o      �C�C 0 	plistkeys 	plistKeysf g�Bg o      �A�A 0 plistvalues plistValues�B  a hih r    jkj J    �@�@  k o      �?�? 0 accumulator  i lml r    non n    pqp 1    �>
�> 
txdlq 1    �=
�= 
ascro o      �<�< 0 oldtids oldTIDsm rsr r    !tut m    vv �ww  u n      xyx 1     �;
�; 
txdly 1    �:
�: 
ascrs z{z Y   " T|�9}~�8| k   1 O ��� r   1 D��� J   1 >�� ��� m   1 2�� ���  e x p o r t  � ��� n   2 6��� 4   3 6�7�
�7 
cobj� o   4 5�6�6 0 i  � o   2 3�5�5 0 	plistkeys 	plistKeys� ��� m   6 7�� ���  =� ��� n   7 ;��� 4   8 ;�4�
�4 
cobj� o   9 :�3�3 0 i  � o   7 8�2�2 0 plistvalues plistValues� ��1� m   ; <�� ���  ;�1  � o      �0�0 
0 tokens  � ��/� s   E O��� l  E L��.�-� c   E L��� o   E J�,�, 
0 tokens  � m   J K�+
�+ 
TEXT�.  �-  � l     ��*�)� n      ���  ;   M N� l  L M��(�'� o   L M�&�& 0 accumulator  �(  �'  �*  �)  �/  �9 0 i  } m   % &�%�% ~ n   & ,��� m   ) +�$
�$ 
nmbr� n  & )��� 2  ' )�#
�# 
cobj� o   & '�"�" 0 	plistkeys 	plistKeys�8  { ��� r   U Z��� 1   U V�!
�! 
spac� n     ��� 1   W Y� 
�  
txdl� 1   V W�
� 
ascr� ��� r   [ `��� c   [ ^��� o   [ \�� 0 accumulator  � m   \ ]�
� 
TEXT� o      �� 0 	envstring 	envString� ��� r   a f��� o   a b�� 0 oldtids oldTIDs� n     ��� 1   c e�
� 
txdl� 1   b c�
� 
ascr� ��� o   g h�� 0 	envstring 	envString�  Z ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �  �  �       ������������������������������  � ��
�	��������� ������������������������������� 0 seescriptsettings  �
 "0 modeenvironment modeEnvironment�	 0 moderesources modeResources� 20 openenvironmentsettings openEnvironmentSettings� *0 environmentfilepath environmentFilePath� .0 completeselectedlines completeSelectedLines� 0 selectiontext selectionText� $0 setselectiontext setSelectionText�  0 selectionrange selectionRange� &0 setselectionrange setSelectionRange� .0 extendedselectiontext extendedSelectionText�  "0 extendselection extendSelection�� "0 checksavestatus checkSaveStatus�� *0 requirenewlineateof requireNewlineAtEOF�� 0 documentpath documentPath�� 0 documentline documentLine�� 0 replacement  �� 
0 tokens  �� 0 join  �� $0 doublequotedform doubleQuotedForm��  0 shelltransform shellTransform�� 20 writedefaultenvironment writeDefaultEnvironment�� "0 openenvironment openEnvironment�� "0 readenvironment readEnvironment�� 0 readlistpair readListPair�� &0 environmentstring environmentString
�� .aevtoappnull  �   � ****� �� ���������� 0 seescriptsettings  ��  ��  �  � ��  �� $�� '���� 0 displayname displayName�� $0 shortdisplayname shortDisplayName�� 0 incontextmenu inContextMenu�� �� 
�������� �� A���������� "0 modeenvironment modeEnvironment��  ��  �  �  G K������ S���������� Y��
�� 
for �� 0 moderesources modeResources�� $0 doublequotedform doubleQuotedForm
�� 
outo�� *0 environmentfilepath environmentFilePath�� "0 readenvironment readEnvironment�� 
�� 
by  �� 0 join  �� "��*�*j+ l �*�*j+ l �v��l � �� `���������� 0 moderesources modeResources��  ��  �  �  l������
�� 
docu
�� 
Mode
�� 
pMrp�� � *�k/�,�,EU� �� r���������� 20 openenvironmentsettings openEnvironmentSettings��  ��  �  � ����������
�� 
at  �� *0 environmentfilepath environmentFilePath�� 60 settingdefaultenvironment settingDefaultEnvironment�� �� "0 openenvironment openEnvironment�� *�*j+ �e� � �� |���������� *0 environmentfilepath environmentFilePath��  ��  � ���� 0 modename modeName�  ��������������������� � ��� ���
�� 
docu
�� 
Mode
�� 
pnam
�� afdrpref
�� 
from
�� fldmfldu
�� 
rtyp
�� 
TEXT�� 
�� .earsffdralis        afdr
�� 
by  �� 0 join  �� %� *�k/�,�,E�UO������ 
���v��l � �� ����������� .0 completeselectedlines completeSelectedLines��  ��  �  � ����������  0 extendingfront extendingFront�� 0 extendingend extendingEnd�� �� "0 extendselection extendSelection�� 
*�e�e� � �� ����������� 0 selectiontext selectionText��  ��  �  �  �������
�� 
docu
�� 
pSel
�� 
pTxt�� ��k/ *�,�,EU� �� ����������� $0 setselectiontext setSelectionText��  �� ������
�� 
to  �� 0 newtext newText��  � ���� 0 newtext newText�  �������
�� 
docu
�� 
pSel
�� 
pTxt�� � �*�k/�,�,FU� �� �����������  0 selectionrange selectionRange��  �� �������  0 extendingfront extendingFront�� &0 shouldextendfront shouldExtendFront� �������� 0 extendingend extendingEnd�� "0 shouldextendend shouldExtendEnd��  � ������ &0 shouldextendfront shouldExtendFront�� "0 shouldextendend shouldExtendEnd� 4������������
�� 
docu
�� 
bool
�� 
pSel
�� 
cpar
�� 
pIdS
�� 
pIdN�� h��k/ a�	 ��& *�,�k/�,E*�,�i/�,ElvY @� *�,�k/�,E*�,�,ElvY (� *�,�,E*�,�i/�,ElvY *�,�,E*�,�,ElvU� ��:���������� &0 setselectionrange setSelectionRange��  �� ������
�� 
to  �� 0 newrange newRange��  � ���� 0 newrange newRange� E����
�� 
docu
�� 
pSel�� ��k/ �*�,FU� ��K���������� .0 extendedselectiontext extendedSelectionText��  �� �������  0 extendingfront extendingFront�� &0 shouldextendfront shouldExtendFront� ��~�}� 0 extendingend extendingEnd�~ "0 shouldextendend shouldExtendEnd�}  � �|�{�z�y�| &0 shouldextendfront shouldExtendFront�{ "0 shouldextendend shouldExtendEnd�z 0 	startchar 	startChar�y 0 nextchar nextChar� �x�w�v�u�t�s�r�qo�p�o�n�m
�x 
Krtn�w 0 	startchar 	startChar�v 0 nextchar nextChar�u  0 extendingfront extendingFront�t 0 extendingend extendingEnd�s �r  0 selectionrange selectionRange
�q 
cobj
�p 
docu
�o 
cha 
�n 
pTxt
�m 
ctxt�� 8*���lv��� E[�k/E�Z[�l/E�ZO��k/ *[�\[Z�\Z�k2�,�&U� �lu�k�j���i�l "0 extendselection extendSelection�k  �j �h�g��h  0 extendingfront extendingFront�g &0 shouldextendfront shouldExtendFront� �f�e�d�f 0 extendingend extendingEnd�e "0 shouldextendend shouldExtendEnd�d  � �c�b�a�`�c &0 shouldextendfront shouldExtendFront�b "0 shouldextendend shouldExtendEnd�a 0 	startchar 	startChar�` 0 nextchar nextChar� 
�_�^�]�\�[�Z�Y�X�W�V
�_ 
Krtn�^ 0 	startchar 	startChar�] 0 nextchar nextChar�\  0 extendingfront extendingFront�[ 0 extendingend extendingEnd�Z �Y  0 selectionrange selectionRange
�X 
cobj
�W 
to  �V &0 setselectionrange setSelectionRange�i +*���lv��� E[�k/E�Z[�l/E�ZO*袣klvl 	� �U��T�S���R�U "0 checksavestatus checkSaveStatus�T  �S �Q�P�O�Q 0 updating  �P 0 
shouldsave 
shouldSave�O  � �N�N 0 
shouldsave 
shouldSave� 
��M�L�K��J�I�H�G�F
�M 
docu
�L 
ppth
�K .coredoexbool        obj 
�J 
imod
�I 
bool
�H .coresavenull���     obj �G  �F  �R E� A*�k/�,j  	)j�Y hO�	 *�k/�,E�&  *�k/j W X  	hY hU� �E��D�C���B�E *0 requirenewlineateof requireNewlineAtEOF�D  �C  �  � ��A��@�?�>�=
�A 
docu
�@ 
cpar
�? 
pTxt
�> 
ret 
�= 
cins�B #��k/ �*�i/�,  hY �*�i/�i/�,FU� �<��;�:���9�< 0 documentpath documentPath�;  �:  �  � ��8�7
�8 
docu
�7 
ppth�9 � 	*�k/�,EU� �6��5�4���3�6 0 documentline documentLine�5  �4  �  � �2�1�0
�2 
docu
�1 
pSel
�0 
pSln�3 � *�k/�,�,EU� �/�.�-� �,�/ 0 replacement  �. 0 olddelim oldDelim�- �+�*
�+ 
by  �* 0 newdelim newDelim �)�(�'
�) 
for �( 0 sourcestring sourceString�'  � �&�%�$�& 0 olddelim oldDelim�% 0 newdelim newDelim�$ 0 sourcestring sourceString  �#�"�!� 
�# 
btwn�" 
0 tokens  
�! 
by  �  0 join  �, ��l �l � �(���� 
0 tokens  � 0 str  � ���
� 
btwn� 0 
delimiters  �   ����� 0 str  � 0 
delimiters  � 0 oldtids oldTIDs� 0 strtoks   ���
� 
ascr
� 
txdl
� 
citm� ��,E�O���,FO��-E�O���,FO�� �L���� 0 join  � 0 	tokenlist 	tokenList� ���
� 
by  � 0 	delimiter  �   �
�	���
 0 	tokenlist 	tokenList�	 0 	delimiter  � 0 oldtids oldTIDs� 0 joinedstring joinedString ���
� 
ascr
� 
txdl
� 
TEXT� ��,E�O���,FO��&E�O���,FO�� �p��� � $0 doublequotedform doubleQuotedForm�  � ������
�� 
for �� 0 
basestring 
baseString��   ���� 0 
basestring 
baseString ��
�� 
quot�  ��%�%� ��|����	����  0 shelltransform shellTransform�� 0 intext inText�� ����

�� 
for �� 0 	envstring 	envString
 ����
�� 
thru�� 0 pipeline   �������� *0 alteringlineendings alteringLineEndings�� 0 altends altEnds��   
���������������������� 0 intext inText�� 0 	envstring 	envString�� 0 pipeline  �� 0 altends altEnds�� 0 shellscript  �� 0 oldclipboard oldClipboard�� 0 shellresponse  �� 0 errmsg errMsg�� 0 errnum errNum�� 0 	badobject 	badObject	 �������������������������� 
�� 
by  
�� 
spac�� 0 join  
�� .JonsgClp****    ��� null
�� .JonspClpnull���     ****
�� 
alen
�� .sysoexecTEXT���     TEXT�� 0 errmsg errMsg ����
�� 
errn�� 0 errnum errNum ������
�� 
erob�� 0 	badobject 	badObject��  
�� 
errn
�� 
erob�� H����v��l E�O*j E�O�j O ��l 	E�W X 
 �j O)����O�j O�� ����������� 20 writedefaultenvironment writeDefaultEnvironment��  �� ������
�� 
at  �� 0 envpath envPath��   ������������ 0 envpath envPath��  0 savedclipboard savedClipboard�� 0 errmsg errMsg�� 0 errnum errNum�� 0 	badobject 	badObject ������������������
�� .JonsgClp****    ��� null
�� .JonspClpnull���     ****
�� 
psxp
�� .sysoexecTEXT���     TEXT�� 0 errmsg errMsg ����
�� 
errn�� 0 errnum errNum ������
�� 
erob�� 0 	badobject 	badObject��  
�� 
errn
�� 
erob�� �� 7*j  E�O�j O ��,%j W X  �j O)���O�j � ���������� "0 openenvironment openEnvironment��  �� ����
�� 
at  �� 0 envfilepath envFilePath �������� 60 settingdefaultenvironment settingDefaultEnvironment�� $0 shouldsetdefault shouldSetDefault��   ������ 0 envfilepath envFilePath�� $0 shouldsetdefault shouldSetDefault 
(������������"����
�� 
file
�� .coredoexbool        obj 
�� 
at  �� 20 writedefaultenvironment writeDefaultEnvironment
�� 
errn���@
�� 
quot
�� .aevtodocnull  �    alis�� 9� 5*�/j  � )�l Y )��l��%�%�%Y hO*�/j 	U� ��.�������� "0 readenvironment readEnvironment��  �� ������
�� 
outo�� 	0 plist  ��   ���� 	0 plist   ����������
�� 
outo�� 0 readlistpair readListPair
�� 
from
�� 
rslt�� &0 environmentstring environmentString�� *�l O*��l � ��>�������� 0 readlistpair readListPair��  �� ������
�� 
outo�� 	0 plist  ��   ���� 	0 plist   V������������
�� 
file
�� .coredoexbool        obj 
�� 
plif
�� 
plii
�� 
pnam
�� 
valL�� 1� -*�/j  *�/ *�-[�,\[�,\ZlvEUY jvjvlvU� ��\�������� &0 environmentstring environmentString��  �� ������
�� 
from�� $0 keyvaluelistpair keyValueListPair��   ���������������� $0 keyvaluelistpair keyValueListPair�� 0 	plistkeys 	plistKeys�� 0 plistvalues plistValues�� 0 accumulator  �� 0 oldtids oldTIDs�� 0 i  �� 0 	envstring 	envString ����~v�}����|�{�z
�� 
cobj
� 
ascr
�~ 
txdl
�} 
nmbr�| 
�{ 
TEXT
�z 
spac�� i�E[�k/E�Z[�l/E�ZOjvE�O��,E�O���,FO 1k��-�,Ekh ��/��/��vEc  Ob  �&�6G[OY��O���,FO��&E�O���,FO�� �y�x�w�v
�y .aevtoappnull  �   � **** k       �u�u  �x  �w     �t�t 20 openenvironmentsettings openEnvironmentSettings�v *j+   ascr  ��ޭ