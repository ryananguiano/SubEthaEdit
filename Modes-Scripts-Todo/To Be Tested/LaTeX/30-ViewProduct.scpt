FasdUAS 1.101.10   ��   ��    k             l     ��  ��    F @$Id: ViewProduct.applescript,v 1.9 2008/02/17 11:24:49 mjb Exp $     � 	 	 � $ I d :   V i e w P r o d u c t . a p p l e s c r i p t , v   1 . 9   2 0 0 8 / 0 2 / 1 7   1 1 : 2 4 : 4 9   m j b   E x p   $   
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
      l     ��������  ��  ��        l     ����  I    ���� �� "0 checksavestatus checkSaveStatus��    �� ���� 0 updating    m    ��
�� boovfals��  ��  ��        l   * ����  r    *    I   (��  �� 0 join    J    "      !   I    �������� "0 modeenvironment modeEnvironment��  ��   !  " # " I   ���� $�� $0 doublequotedform doubleQuotedForm��   $ �� %��
�� 
for  % m     & & � ' ' L $ S E E _ M O D E _ R E S O U R C E S / b i n / v i e w p r o d u c t . s h��   #  ( ) ( n     * + * 1    ��
�� 
strq + I    �������� 0 documentpath documentPath��  ��   )  ,�� , I     �������� 0 documentline documentLine��  ��  ��    �� -��
�� 
by   - 1   # $��
�� 
spac��    o      ���� 0 
viewscript 
viewScript��  ��     . / . l  + 0 0���� 0 I  + 0�� 1��
�� .sysoexecTEXT���     TEXT 1 o   + ,���� 0 
viewscript 
viewScript��  ��  ��   /  2 3 2 l     ��������  ��  ��   3  4 5 4 l     �� 6 7��   6   SubEthaEdit settings    7 � 8 8 *   S u b E t h a E d i t   s e t t i n g s 5  9 : 9 l     ��������  ��  ��   :  ; < ; i      = > = I      �������� 0 seescriptsettings  ��  ��   > K      ? ? �� @ A�� 0 displayname displayName @ m     B B � C C  V i e w A �� D E�� $0 shortdisplayname shortDisplayName D m     F F � G G  V i e w E �� H I�� $0 keyboardshortcut keyboardShortcut H m     J J � K K  ^ ~ @ o I �� L M�� 0 toolbaricon toolbarIcon L m     N N � O O  T o o l b a r I c o n R u n M �� P Q�� $0 indefaulttoolbar inDefaultToolbar P m   	 
 R R � S S  y e s Q �� T U��  0 toolbartooltip toolbarTooltip T m     V V � W W P V i e w   c u r r e n t   d o c u m e n t   i n   e x t e r n a l   v i e w e r U �� X���� 0 incontextmenu inContextMenu X m     Y Y � Z Z  n o��   <  [ \ [ l     ��������  ��  ��   \  ] ^ ] l     �� _ `��   _   SubEthaEdit Tools    ` � a a $   S u b E t h a E d i t   T o o l s ^  b c b l     �� d e��   d M G $Id: SubEthaEditTools.m4pplescript,v 1.6 2008/02/17 12:29:00 mjb Exp $    e � f f �   $ I d :   S u b E t h a E d i t T o o l s . m 4 p p l e s c r i p t , v   1 . 6   2 0 0 8 / 0 2 / 1 7   1 2 : 2 9 : 0 0   m j b   E x p   $ c  g h g l     ��������  ��  ��   h  i j i l     �� k l��   k   Environment management    l � m m .   E n v i r o n m e n t   m a n a g e m e n t j  n o n l     ��������  ��  ��   o  p q p i     r s r I      �������� "0 modeenvironment modeEnvironment��  ��   s I    !�� t u�� 0 join   t J      v v  w x w m      y y � z z r e x p o r t   _ _ C F _ U S E R _ T E X T _ E N C O D I N G = 0 x 1 F 5 : 0 x 8 0 0 0 1 0 0 : 0 x 8 0 0 0 1 0 0 ; x  { | { m     } } � ~ ~ 4 e x p o r t   S E E _ M O D E _ R E S O U R C E S = |   �  I   ���� ��� $0 doublequotedform doubleQuotedForm��   � �� ���
�� 
for  � I    	�������� 0 moderesources modeResources��  ��  ��   �  � � � m     � � � � �  ;   �  ��� � I   ���� ��� "0 readenvironment readEnvironment��   � �� ���
�� 
outo � I    �������� *0 environmentfilepath environmentFilePath��  ��  ��  ��   u �� ���
�� 
by   � m     � � � � �  ��   q  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� 0 moderesources modeResources��  ��   � O     � � � e     � � l    ����� � n     � � � 1   
 ��
�� 
pMrp � l   
 ����� � n    
 � � � m    
��
�� 
Mode � l    ����� � 4   �� �
�� 
docu � m    ���� ��  ��  ��  ��  ��  ��   � m      � ��                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��   �  � � � l     ��������  ��  ��   �  � � � i    � � � I      �������� 20 openenvironmentsettings openEnvironmentSettings��  ��   � I    ���� ��� "0 openenvironment openEnvironment��   � �� � �
�� 
at   � I    �������� *0 environmentfilepath environmentFilePath��  ��   � �� ����� 60 settingdefaultenvironment settingDefaultEnvironment � m    	��
�� boovtrue��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      ��~�}� *0 environmentfilepath environmentFilePath�~  �}   � k     $ � �  � � � O     � � � r     � � � n     � � � 1   
 �|
�| 
pnam � l   
 ��{�z � n    
 � � � m    
�y
�y 
Mode � l    ��x�w � 4   �v �
�v 
docu � m    �u�u �x  �w  �{  �z   � o      �t�t 0 modename modeName � m      � ��                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��   �  ��s � I   $�r � ��r 0 join   � J     � �  � � � I   �q � �
�q .earsffdralis        afdr � m    �p
�p afdrpref � �o � �
�o 
from � m    �n
�n fldmfldu � �m ��l
�m 
rtyp � m    �k
�k 
TEXT�l   �  � � � m     � � � � � : d e . c o d i n g m o n k e y s . S u b E t h a E d i t . �  � � � o    �j�j 0 modename modeName �  ��i � m     � � � � � $ _ e n v i r o n m e n t . p l i s t�i   � �h ��g
�h 
by   � m      � � � � �  �g  �s   �  � � � l     �f�e�d�f  �e  �d   �  � � � l     �c � ��c   � $  Manipulation of document text    � � � � <   M a n i p u l a t i o n   o f   d o c u m e n t   t e x t �  � � � l     �b�a�`�b  �a  �`   �  � � � i    � � � I      �_�^�]�_ .0 completeselectedlines completeSelectedLines�^  �]   � I    	�\�[ ��\ "0 extendselection extendSelection�[   � �Z � ��Z  0 extendingfront extendingFront � m    �Y
�Y boovtrue � �X ��W�X 0 extendingend extendingEnd�W   �  � � � l     �V�U�T�V  �U  �T   �  � � � i     � � � I      �S�R�Q�S 0 selectiontext selectionText�R  �Q   � O     � � � e     � � l    ��P�O � n     � � � 1   
 �N
�N 
pTxt � l   
 ��M�L � 1    
�K
�K 
pSel�M  �L  �P  �O   � l     ��J�I � n      � � � 4   �H �
�H 
docu � m    �G�G  � m      � ��                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  �J  �I   �  � � � l     �F�E�D�F  �E  �D   �  � � � i    � � � I      �C�B ��C $0 setselectiontext setSelectionText�B   � �A ��@
�A 
to   � o      �?�? 0 newtext newText�@   � O     �  � r     l   �>�= o    �<�< 0 newtext newText�>  �=   l     �;�: n       1    �9
�9 
pTxt l   �8�7 n    	 1   	 �6
�6 
pSel	 l   	
�5�4
 4   	�3
�3 
docu m    �2�2 �5  �4  �8  �7  �;  �:    m     �                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��   �  l     �1�0�/�1  �0  �/    i     # I      �.�-�.  0 selectionrange selectionRange�-   �,�,  0 extendingfront extendingFront o      �+�+ &0 shouldextendfront shouldExtendFront �*�)�* 0 extendingend extendingEnd o      �(�( "0 shouldextendend shouldExtendEnd�)   O     g Z    f F     o    �'�' &0 shouldextendfront shouldExtendFront o    �&�& "0 shouldextendend shouldExtendEnd e    % J    %   !"! n    #$# 1    �%
�% 
pIdS$ l   %�$�#% n    &'& 4   �"(
�" 
cpar( m    �!�! ' l   )� �) 1    �
� 
pSel�   �  �$  �#  " *�* n    #+,+ 1     "�
� 
pIdN, l    -��- n     ./. 4    �0
� 
cpar0 m    ����/ l   1��1 1    �
� 
pSel�  �  �  �  �   232 o   ( )�� &0 shouldextendfront shouldExtendFront3 454 e   , =66 J   , =77 898 n   , 5:;: 1   2 4�
� 
pIdS; l  , 2<��< n   , 2=>= 4  / 2�?
� 
cpar? m   0 1�� > l  , /@��@ 1   , /�
� 
pSel�  �  �  �  9 A�A n   5 ;BCB 1   8 :�

�
 
pIdNC l  5 8D�	�D 1   5 8�
� 
pSel�	  �  �  5 EFE o   @ A�� "0 shouldextendend shouldExtendEndF G�G e   D UHH J   D UII JKJ n   D JLML 1   G I�
� 
pIdSM l  D GN��N 1   D G�
� 
pSel�  �  K O� O n   J SPQP 1   P R��
�� 
pIdNQ l  J PR����R n   J PSTS 4  M P��U
�� 
cparU m   N O������T l  J MV����V 1   J M��
�� 
pSel��  ��  ��  ��  �   �   e   X fWW J   X fXX YZY n   X ^[\[ 1   [ ]��
�� 
pIdS\ l  X []����] 1   X [��
�� 
pSel��  ��  Z ^��^ n   ^ d_`_ 1   a c��
�� 
pIdN` l  ^ aa����a 1   ^ a��
�� 
pSel��  ��  ��   l    b����b n     cdc 4   ��e
�� 
docue m    ���� d m     ff�                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  ��  ��   ghg l     ��������  ��  ��  h iji i  $ 'klk I      ����m�� &0 setselectionrange setSelectionRange��  m ��n��
�� 
to  n o      ���� 0 newrange newRange��  l O     opo r    qrq o    ���� 0 newrange newRanger 1    ��
�� 
pSelp l    s����s n     tut 4   ��v
�� 
docuv m    ���� u m     ww�                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  ��  ��  j xyx l     ��������  ��  ��  y z{z i   ( +|}| I      ����~�� .0 extendedselectiontext extendedSelectionText��  ~ �����  0 extendingfront extendingFront o      ���� &0 shouldextendfront shouldExtendFront� ������� 0 extendingend extendingEnd� o      ���� "0 shouldextendend shouldExtendEnd��  } k     7�� ��� r     ��� I     �������  0 selectionrange selectionRange��  � ������  0 extendingfront extendingFront� o    ���� &0 shouldextendfront shouldExtendFront� ������� 0 extendingend extendingEnd� o   	 
���� "0 shouldextendend shouldExtendEnd��  � J    �� ��� o    ���� 0 	startchar 	startChar� ���� o    ���� 0 nextchar nextChar��  � ���� O    7��� e   % 6�� c   % 6��� l  % 4������ n   % 4��� 1   2 4��
�� 
pTxt� 7 % 2����
�� 
cha � o   * ,���� 0 	startchar 	startChar� l  - 1������ \   - 1��� o   . /���� 0 nextchar nextChar� m   / 0���� ��  ��  ��  ��  � m   4 5��
�� 
ctxt� l   "������ n    "��� 4   "���
�� 
docu� m     !���� � m    ���                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  ��  ��  ��  { ��� l     ��������  ��  ��  � ��� i  , /��� I      ������� "0 extendselection extendSelection��  � ������  0 extendingfront extendingFront� o      ���� &0 shouldextendfront shouldExtendFront� ������� 0 extendingend extendingEnd� o      ���� "0 shouldextendend shouldExtendEnd��  � k     *�� ��� r     ��� l     ������ I     �������  0 selectionrange selectionRange��  � ������  0 extendingfront extendingFront� o    ���� &0 shouldextendfront shouldExtendFront� ������� 0 extendingend extendingEnd� o   	 
���� "0 shouldextendend shouldExtendEnd��  ��  ��  � J    �� ��� o    ���� 0 	startchar 	startChar� ���� o    ���� 0 nextchar nextChar��  � ���� I   *������� &0 setselectionrange setSelectionRange��  � �����
�� 
to  � J     &�� ��� o     !���� 0 	startchar 	startChar� ���� \   ! $��� o   ! "���� 0 nextchar nextChar� m   " #���� ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � * $ Manipulation of document properties   � ��� H   M a n i p u l a t i o n   o f   d o c u m e n t   p r o p e r t i e s� ��� l     ��������  ��  ��  � ��� i  0 3��� I      ������� "0 checksavestatus checkSaveStatus��  � ������� 0 updating  � o      ���� 0 
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
shouldSave� l   &���~� n    &��� 1   # %�}
�} 
imod� 4   #�|�
�| 
docu� m   ! "�{�{ �  �~  � Q   + ?���z� I  . 6�y��x
�y .coresavenull���     obj � 4  . 2�w�
�w 
docu� m   0 1�v�v �x  � R      �u�t�s
�u .ascrerr ****      � ****�t  �s  �z  ��  ��  ��  � m     ���                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  � ��� l     �r�q�p�r  �q  �p  � ��� i  4 7��� I      �o�n�m�o *0 requirenewlineateof requireNewlineAtEOF�n  �m  � O     "��� Z    !���l�� =   ��� m    �� ���  � l   ��k�j� n       1    �i
�i 
pTxt l   �h�g 4   �f
�f 
cpar m   
 �e�e���h  �g  �k  �j  � l   �d�d   ( " final line terminated, do nothing    � D   f i n a l   l i n e   t e r m i n a t e d ,   d o   n o t h i n g�l  � r    ! o    �c
�c 
ret  l     	�b�a	 n      

 1     �`
�` 
pTxt l   �_�^ n     4   �]
�] 
cins m    �\�\�� l   �[�Z 4   �Y
�Y 
cpar m    �X�X���[  �Z  �_  �^  �b  �a  � l    �W�V n      4   �U
�U 
docu m    �T�T  m     �                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  �W  �V  �  l     �S�R�Q�S  �R  �Q    i   8 ; I      �P�O�N�P 0 documentpath documentPath�O  �N   O     e     l    �M�L  n    !"! 1    
�K
�K 
ppth" l   #�J�I# 4   �H$
�H 
docu$ m    �G�G �J  �I  �M  �L   m     %%�                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��   &'& l     �F�E�D�F  �E  �D  ' ()( i   < ?*+* I      �C�B�A�C 0 documentline documentLine�B  �A  + O    ,-, e    .. l   /�@�?/ n    010 1   
 �>
�> 
pSln1 n    
232 1    
�=
�= 
pSel3 4   �<4
�< 
docu4 m    �;�; �@  �?  - m     55�                                                                                  Hdra   alis    �  Macintosh HD               ��W	H+   <�SubEthaEdit.app                                                 &k!�Q��        ����  	                Life    ��:�      �Q��     <� 
v� 
J=  {�  =Macintosh HD:Users:pittenau:Applications:Life:SubEthaEdit.app      S u b E t h a E d i t . a p p    M a c i n t o s h   H D  0Users/pittenau/Applications/Life/SubEthaEdit.app  /    ��  ) 676 l     �:�9�8�:  �9  �8  7 898 l     �7:;�7  :   String Utilities   ; �<< "   S t r i n g   U t i l i t i e s9 =>= l     �6?@�6  ? G A $Id: StringTools.applescript,v 1.5 2008/02/17 08:56:05 mjb Exp $   @ �AA �   $ I d :   S t r i n g T o o l s . a p p l e s c r i p t , v   1 . 5   2 0 0 8 / 0 2 / 1 7   0 8 : 5 6 : 0 5   m j b   E x p   $> BCB l     �5�4�3�5  �4  �3  C DED i   @ CFGF I      �2HI�2 0 replacement  H o      �1�1 0 olddelim oldDelimI �0JK
�0 
by  J o      �/�/ 0 newdelim newDelimK �.L�-
�. 
for L o      �,�, 0 sourcestring sourceString�-  G L     MM I    �+NO�+ 0 join  N l    P�*�)P I    �(QR�( 
0 tokens  Q o     �'�' 0 sourcestring sourceStringR �&S�%
�& 
btwnS o    �$�$ 0 olddelim oldDelim�%  �*  �)  O �#T�"
�# 
by  T o    	�!�! 0 newdelim newDelim�"  E UVU l     � ���   �  �  V WXW i   D GYZY I      �[\� 
0 tokens  [ o      �� 0 str  \ �]�
� 
btwn] o      �� 0 
delimiters  �  Z k     ^^ _`_ r     aba n     cdc 1    �
� 
txdld 1     �
� 
ascrb o      �� 0 oldtids oldTIDs` efe r    ghg o    �� 0 
delimiters  h n      iji 1    
�
� 
txdlj 1    �
� 
ascrf klk r    mnm n    opo 2   �
� 
citmp o    �� 0 str  n o      �� 0 strtoks  l qrq r    sts o    �� 0 oldtids oldTIDst n      uvu 1    �
� 
txdlv 1    �
� 
ascrr w�w L    xx o    �� 0 strtoks  �  X yzy l     �
�	��
  �	  �  z {|{ i   H K}~} I      ��� 0 join   o      �� 0 	tokenlist 	tokenList� ���
� 
by  � o      �� 0 	delimiter  �  ~ k     �� ��� r     ��� n     ��� 1    �
� 
txdl� 1     �
� 
ascr� o      � �  0 oldtids oldTIDs� ��� r    ��� o    ���� 0 	delimiter  � n      ��� 1    
��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� c    ��� o    ���� 0 	tokenlist 	tokenList� m    ��
�� 
TEXT� o      ���� 0 joinedstring joinedString� ��� r    ��� o    ���� 0 oldtids oldTIDs� n      ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ���� L    �� o    ���� 0 joinedstring joinedString��  | ��� l     ��������  ��  ��  � ��� i   L O��� I      ������� $0 doublequotedform doubleQuotedForm��  � �����
�� 
for � o      ���� 0 
basestring 
baseString��  � b     ��� b     ��� 1     ��
�� 
quot� o    ���� 0 
basestring 
baseString� 1    ��
�� 
quot� ��� l     ��������  ��  ��  � ��� i   P S��� I      ������  0 shelltransform shellTransform� o      ���� 0 intext inText� ����
�� 
for � o      ���� 0 	envstring 	envString� ����
�� 
thru� o      ���� 0 pipeline  � ������� *0 alteringlineendings alteringLineEndings� o      ���� 0 altends altEnds��  � k     G�� ��� r     ��� I    ������ 0 join  � J     �� ��� o     ���� 0 	envstring 	envString� ��� m    �� ���  p b p a s t e� ��� m    �� ���  |� ���� o    ���� 0 pipeline  ��  � �����
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
�� .JonspClpnull���     ****� l  @ A������ o   @ A���� 0 oldclipboard oldClipboard��  ��  ��  � ���� o   F G���� 0 shellresponse  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � : 4 Handling of environment settings using a plist file   � ��� h   H a n d l i n g   o f   e n v i r o n m e n t   s e t t i n g s   u s i n g   a   p l i s t   f i l e� ��� l     ������  � L F $Id: EnvironmentPlist.applescript,v 1.1 2008/01/03 16:49:41 mjb Exp $   � ��� �   $ I d :   E n v i r o n m e n t P l i s t . a p p l e s c r i p t , v   1 . 1   2 0 0 8 / 0 1 / 0 3   1 6 : 4 9 : 4 1   m j b   E x p   $� ��� l     ��������  ��  ��  �    i  T W I      ������ 20 writedefaultenvironment writeDefaultEnvironment��   ����
�� 
at   o      ���� 0 envpath envPath��   k     6  r     	
	 I    ������
�� .JonsgClp****    ��� null��  ��  
 o      ����  0 savedclipboard savedClipboard  I   ����
�� .JonspClpnull���     **** m    	 �z < ? x m l   v e r s i o n = " 1 . 0 "   e n c o d i n g = " U T F - 8 " ? > 
 < ! D O C T Y P E   p l i s t   P U B L I C   " - / / A p p l e   C o m p u t e r / / D T D   P L I S T   1 . 0 / / E N "   " h t t p : / / w w w . a p p l e . c o m / D T D s / P r o p e r t y L i s t - 1 . 0 . d t d " > 
 < p l i s t   v e r s i o n = " 1 . 0 " > 
 < d i c t / > 
 < / p l i s t >��    Q    0 I   ����
�� .sysoexecTEXT���     TEXT b     m     �  p b p a s t e   >   l   ���� n     1    ��
�� 
psxp o    ���� 0 envpath envPath��  ��  ��   R      ��
�� .ascrerr ****      � **** o      ���� 0 errmsg errMsg �� 
�� 
errn o      ���� 0 errnum errNum  ��!��
�� 
erob! o      ���� 0 	badobject 	badObject��   k   " 0"" #$# I  " '��%��
�� .JonspClpnull���     ****% l  " #&����& o   " #����  0 savedclipboard savedClipboard��  ��  ��  $ '��' R   ( 0��()
�� .ascrerr ****      � ****( o   . /���� 0 errmsg errMsg) ��*+
�� 
errn* o   * +���� 0 errnum errNum+ �,�~
� 
erob, o   , -�}�} 0 	badobject 	badObject�~  ��   -�|- I  1 6�{.�z
�{ .JonspClpnull���     ****. l  1 2/�y�x/ o   1 2�w�w  0 savedclipboard savedClipboard�y  �x  �z  �|   010 l     �v�u�t�v  �u  �t  1 232 i  X [454 I      �s�r6�s "0 openenvironment openEnvironment�r  6 �q78
�q 
at  7 o      �p�p 0 envfilepath envFilePath8 �o9�n�o 60 settingdefaultenvironment settingDefaultEnvironment9 o      �m�m $0 shouldsetdefault shouldSetDefault�n  5 O     8:;: k    7<< =>= Z    .?@�l�k? H    AA l   B�j�iB I   �hC�g
�h .coredoexbool        obj C 4    �fD
�f 
fileD o    �e�e 0 envfilepath envFilePath�g  �j  �i  @ Z    *EF�dGE o    �c�c $0 shouldsetdefault shouldSetDefaultF I   �bHI�b 20 writedefaultenvironment writeDefaultEnvironmentH  f    I �aJ�`
�a 
at  J o    �_�_ 0 envfilepath envFilePath�`  �d  G R    *�^KL
�^ .ascrerr ****      � ****K l  " )M�]�\M b   " )NON b   " 'PQP b   " %RSR m   " #TT �UU 6 C a n ' t   g e t   e n v i r o n m e n t   f i l e  S 1   # $�[
�[ 
quotQ o   % &�Z�Z 0 envfilepath envFilePathO 1   ' (�Y
�Y 
quot�]  �\  L �XV�W
�X 
errnV m     !�V�V�@�W  �l  �k  > W�UW I  / 7�TX�S
�T .aevtodocnull  �    alisX 4   / 3�RY
�R 
fileY o   1 2�Q�Q 0 envfilepath envFilePath�S  �U  ; m     ZZ�                                                                                  sevs   alis    �  Macintosh HD               ��W	H+     tSystem Events.app                                                ���f�W        ����  	                CoreServices    ��:�      �f�7       t   0   /  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  3 [\[ l     �P�O�N�P  �O  �N  \ ]^] i  \ __`_ I      �M�La�M "0 readenvironment readEnvironment�L  a �Kb�J
�K 
outob o      �I�I 	0 plist  �J  ` k     cc ded I    �H�Gf�H 0 readlistpair readListPair�G  f �Fg�E
�F 
outog o    �D�D 	0 plist  �E  e h�Ch I   �B�Ai�B &0 environmentstring environmentString�A  i �@j�?
�@ 
fromj 1   
 �>
�> 
rslt�?  �C  ^ klk l     �=�<�;�=  �<  �;  l mnm i  ` copo I      �:�9q�: 0 readlistpair readListPair�9  q �8r�7
�8 
outor o      �6�6 	0 plist  �7  p O     0sts Z    /uv�5wu I   �4x�3
�4 .coredoexbool        obj x 4    �2y
�2 
filey o    �1�1 	0 plist  �3  v O    &z{z e    %|| n    %}~} J    $ ��� 1    �0
�0 
pnam� ��/� 1     �.
�. 
valL�/  ~ 2    �-
�- 
plii{ 4    �,�
�, 
plif� o    �+�+ 	0 plist  �5  w J   ) /�� ��� J   ) +�*�*  � ��)� J   + -�(�(  �)  t m     ���                                                                                  sevs   alis    �  Macintosh HD               ��W	H+     tSystem Events.app                                                ���f�W        ����  	                CoreServices    ��:�      �f�7       t   0   /  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  n ��� l     �'�&�%�'  �&  �%  � ��� i   d g��� I      �$�#��$ &0 environmentstring environmentString�#  � �"��!
�" 
from� o      � �  $0 keyvaluelistpair keyValueListPair�!  � k     h�� ��� r     ��� o     �� $0 keyvaluelistpair keyValueListPair� J      �� ��� o      �� 0 	plistkeys 	plistKeys� ��� o      �� 0 plistvalues plistValues�  � ��� r    ��� J    ��  � o      �� 0 accumulator  � ��� r    ��� n    ��� 1    �
� 
txdl� 1    �
� 
ascr� o      �� 0 oldtids oldTIDs� ��� r    !��� m    �� ���  � n      ��� 1     �
� 
txdl� 1    �
� 
ascr� ��� Y   " T������ k   1 O�� ��� r   1 D��� J   1 >�� ��� m   1 2�� ���  e x p o r t  � ��� n   2 6��� 4   3 6��
� 
cobj� o   4 5�� 0 i  � o   2 3�� 0 	plistkeys 	plistKeys� ��� m   6 7�� ���  =� ��� n   7 ;��� 4   8 ;��
� 
cobj� o   9 :�� 0 i  � o   7 8�� 0 plistvalues plistValues� ��� m   ; <�� ���  ;�  � o      �� 
0 tokens  � ��
� s   E O��� l  E L��	�� c   E L��� o   E J�� 
0 tokens  � m   J K�
� 
TEXT�	  �  � l     ���� n      ���  ;   M N� l  L M���� o   L M�� 0 accumulator  �  �  �  �  �
  � 0 i  � m   % &� �  � n   & ,��� m   ) +��
�� 
nmbr� n  & )��� 2  ' )��
�� 
cobj� o   & '���� 0 	plistkeys 	plistKeys�  � ��� r   U Z��� 1   U V��
�� 
spac� n     ��� 1   W Y��
�� 
txdl� 1   V W��
�� 
ascr� ��� r   [ `��� c   [ ^��� o   [ \���� 0 accumulator  � m   \ ]��
�� 
TEXT� o      ���� 0 	envstring 	envString� ��� r   a f��� o   a b���� 0 oldtids oldTIDs� n     ��� 1   c e��
�� 
txdl� 1   b c��
�� 
ascr� ���� o   g h���� 0 	envstring 	envString��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       ���������������� 	
��  � �������������������������������������������������������� 0 seescriptsettings  �� "0 modeenvironment modeEnvironment�� 0 moderesources modeResources�� 20 openenvironmentsettings openEnvironmentSettings�� *0 environmentfilepath environmentFilePath�� .0 completeselectedlines completeSelectedLines�� 0 selectiontext selectionText�� $0 setselectiontext setSelectionText��  0 selectionrange selectionRange�� &0 setselectionrange setSelectionRange�� .0 extendedselectiontext extendedSelectionText�� "0 extendselection extendSelection�� "0 checksavestatus checkSaveStatus�� *0 requirenewlineateof requireNewlineAtEOF�� 0 documentpath documentPath�� 0 documentline documentLine�� 0 replacement  �� 
0 tokens  �� 0 join  �� $0 doublequotedform doubleQuotedForm��  0 shelltransform shellTransform�� 20 writedefaultenvironment writeDefaultEnvironment�� "0 openenvironment openEnvironment�� "0 readenvironment readEnvironment�� 0 readlistpair readListPair�� &0 environmentstring environmentString
�� .aevtoappnull  �   � ****� �� >�������� 0 seescriptsettings  ��  ��     �� B�� F�� J�� N�� R�� V�� Y���� 0 displayname displayName�� $0 shortdisplayname shortDisplayName�� $0 keyboardshortcut keyboardShortcut�� 0 toolbaricon toolbarIcon�� $0 indefaulttoolbar inDefaultToolbar��  0 toolbartooltip toolbarTooltip�� 0 incontextmenu inContextMenu�� �� ���������������� �� s�������� "0 modeenvironment modeEnvironment��  ��      y }������ ����������� ���
�� 
for �� 0 moderesources modeResources�� $0 doublequotedform doubleQuotedForm
�� 
outo�� *0 environmentfilepath environmentFilePath�� "0 readenvironment readEnvironment�� 
�� 
by  �� 0 join  �� "��*�*j+ l �*�*j+ l �v��l � �� ��������� 0 moderesources modeResources��  ��      �������
�� 
docu
�� 
Mode
�� 
pMrp�� � *�k/�,�,EU� �� ��������� 20 openenvironmentsettings openEnvironmentSettings��  ��     ����������
�� 
at  �� *0 environmentfilepath environmentFilePath�� 60 settingdefaultenvironment settingDefaultEnvironment�� �� "0 openenvironment openEnvironment�� *�*j+ �e� � �� ��������� *0 environmentfilepath environmentFilePath��  ��   ���� 0 modename modeName  ��������������������� � ��� ���
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
���v��l � �� ��������� .0 completeselectedlines completeSelectedLines��  ��     ����������  0 extendingfront extendingFront�� 0 extendingend extendingEnd�� �� "0 extendselection extendSelection�� 
*�e�e� � �� ��������� 0 selectiontext selectionText��  ��      �������
�� 
docu
�� 
pSel
�� 
pTxt�� ��k/ *�,�,EU� �� �������� $0 setselectiontext setSelectionText��  �� �~�}�|
�~ 
to  �} 0 newtext newText�|   �{�{ 0 newtext newText �z�y�x
�z 
docu
�y 
pSel
�x 
pTxt� � �*�k/�,�,FU� �w�v�u�t�w  0 selectionrange selectionRange�v  �u �s�r �s  0 extendingfront extendingFront�r &0 shouldextendfront shouldExtendFront  �q�p�o�q 0 extendingend extendingEnd�p "0 shouldextendend shouldExtendEnd�o   �n�m�n &0 shouldextendfront shouldExtendFront�m "0 shouldextendend shouldExtendEnd f�l�k�j�i�h�g
�l 
docu
�k 
bool
�j 
pSel
�i 
cpar
�h 
pIdS
�g 
pIdN�t h��k/ a�	 ��& *�,�k/�,E*�,�i/�,ElvY @� *�,�k/�,E*�,�,ElvY (� *�,�,E*�,�i/�,ElvY *�,�,E*�,�,ElvU� �fl�e�d!"�c�f &0 setselectionrange setSelectionRange�e  �d �b�a�`
�b 
to  �a 0 newrange newRange�`  ! �_�_ 0 newrange newRange" w�^�]
�^ 
docu
�] 
pSel�c ��k/ �*�,FU� �\}�[�Z#$�Y�\ .0 extendedselectiontext extendedSelectionText�[  �Z �X�W%�X  0 extendingfront extendingFront�W &0 shouldextendfront shouldExtendFront% �V�U�T�V 0 extendingend extendingEnd�U "0 shouldextendend shouldExtendEnd�T  # �S�R�Q�P�S &0 shouldextendfront shouldExtendFront�R "0 shouldextendend shouldExtendEnd�Q 0 	startchar 	startChar�P 0 nextchar nextChar$ �O�N�M�L�K�J�I�H��G�F�E�D
�O 
Krtn�N 0 	startchar 	startChar�M 0 nextchar nextChar�L  0 extendingfront extendingFront�K 0 extendingend extendingEnd�J �I  0 selectionrange selectionRange
�H 
cobj
�G 
docu
�F 
cha 
�E 
pTxt
�D 
ctxt�Y 8*���lv��� E[�k/E�Z[�l/E�ZO��k/ *[�\[Z�\Z�k2�,�&U� �C��B�A&'�@�C "0 extendselection extendSelection�B  �A �?�>(�?  0 extendingfront extendingFront�> &0 shouldextendfront shouldExtendFront( �=�<�;�= 0 extendingend extendingEnd�< "0 shouldextendend shouldExtendEnd�;  & �:�9�8�7�: &0 shouldextendfront shouldExtendFront�9 "0 shouldextendend shouldExtendEnd�8 0 	startchar 	startChar�7 0 nextchar nextChar' 
�6�5�4�3�2�1�0�/�.�-
�6 
Krtn�5 0 	startchar 	startChar�4 0 nextchar nextChar�3  0 extendingfront extendingFront�2 0 extendingend extendingEnd�1 �0  0 selectionrange selectionRange
�/ 
cobj
�. 
to  �- &0 setselectionrange setSelectionRange�@ +*���lv��� E[�k/E�Z[�l/E�ZO*袣klvl 	� �,��+�*)*�)�, "0 checksavestatus checkSaveStatus�+  �* �(�'�&�( 0 updating  �' 0 
shouldsave 
shouldSave�&  ) �%�% 0 
shouldsave 
shouldSave* 
��$�#�"��!� ���
�$ 
docu
�# 
ppth
�" .coredoexbool        obj 
�! 
imod
�  
bool
� .coresavenull���     obj �  �  �) E� A*�k/�,j  	)j�Y hO�	 *�k/�,E�&  *�k/j W X  	hY hU  ����+,�� *0 requirenewlineateof requireNewlineAtEOF�  �  +  , ������
� 
docu
� 
cpar
� 
pTxt
� 
ret 
� 
cins� #��k/ �*�i/�,  hY �*�i/�i/�,FU ���-.�� 0 documentpath documentPath�  �  -  . %��
� 
docu
� 
ppth� � 	*�k/�,EU �+��/0�
� 0 documentline documentLine�  �  /  0 5�	��
�	 
docu
� 
pSel
� 
pSln�
 � *�k/�,�,EU �G��12�� 0 replacement  � 0 olddelim oldDelim� ��3
� 
by  � 0 newdelim newDelim3 � ����
�  
for �� 0 sourcestring sourceString��  1 �������� 0 olddelim oldDelim�� 0 newdelim newDelim�� 0 sourcestring sourceString2 ��������
�� 
btwn�� 
0 tokens  
�� 
by  �� 0 join  � ��l �l  ��Z����45���� 
0 tokens  �� 0 str  �� ������
�� 
btwn�� 0 
delimiters  ��  4 ���������� 0 str  �� 0 
delimiters  �� 0 oldtids oldTIDs�� 0 strtoks  5 ������
�� 
ascr
�� 
txdl
�� 
citm�� ��,E�O���,FO��-E�O���,FO� ��~����67���� 0 join  �� 0 	tokenlist 	tokenList�� ������
�� 
by  �� 0 	delimiter  ��  6 ���������� 0 	tokenlist 	tokenList�� 0 	delimiter  �� 0 oldtids oldTIDs�� 0 joinedstring joinedString7 ������
�� 
ascr
�� 
txdl
�� 
TEXT�� ��,E�O���,FO��&E�O���,FO� �������89���� $0 doublequotedform doubleQuotedForm��  �� ������
�� 
for �� 0 
basestring 
baseString��  8 ���� 0 
basestring 
baseString9 ��
�� 
quot�� ��%�% �������:;����  0 shelltransform shellTransform�� 0 intext inText�� ����<
�� 
for �� 0 	envstring 	envString< ����=
�� 
thru�� 0 pipeline  = �������� *0 alteringlineendings alteringLineEndings�� 0 altends altEnds��  : 
���������������������� 0 intext inText�� 0 	envstring 	envString�� 0 pipeline  �� 0 altends altEnds�� 0 shellscript  �� 0 oldclipboard oldClipboard�� 0 shellresponse  �� 0 errmsg errMsg�� 0 errnum errNum�� 0 	badobject 	badObject; ��������������������>������ 
�� 
by  
�� 
spac�� 0 join  
�� .JonsgClp****    ��� null
�� .JonspClpnull���     ****
�� 
alen
�� .sysoexecTEXT���     TEXT�� 0 errmsg errMsg> ����?
�� 
errn�� 0 errnum errNum? ������
�� 
erob�� 0 	badobject 	badObject��  
�� 
errn
�� 
erob�� H����v��l E�O*j E�O�j O ��l 	E�W X 
 �j O)����O�j O� ������@A���� 20 writedefaultenvironment writeDefaultEnvironment��  �� ������
�� 
at  �� 0 envpath envPath��  @ ������������ 0 envpath envPath��  0 savedclipboard savedClipboard�� 0 errmsg errMsg�� 0 errnum errNum�� 0 	badobject 	badObjectA ����������B������
�� .JonsgClp****    ��� null
�� .JonspClpnull���     ****
�� 
psxp
�� .sysoexecTEXT���     TEXT�� 0 errmsg errMsgB ����C
�� 
errn�� 0 errnum errNumC ������
�� 
erob�� 0 	badobject 	badObject��  
�� 
errn
�� 
erob�� �� 7*j  E�O�j O ��,%j W X  �j O)���O�j 	 ��5����DE���� "0 openenvironment openEnvironment��  �� ����F
�� 
at  �� 0 envfilepath envFilePathF �������� 60 settingdefaultenvironment settingDefaultEnvironment�� $0 shouldsetdefault shouldSetDefault��  D ������ 0 envfilepath envFilePath�� $0 shouldsetdefault shouldSetDefaultE 
Z������������T����
�� 
file
�� .coredoexbool        obj 
�� 
at  �� 20 writedefaultenvironment writeDefaultEnvironment
�� 
errn���@
�� 
quot
�� .aevtodocnull  �    alis�� 9� 5*�/j  � )�l Y )��l��%�%�%Y hO*�/j 	U
 ��`��~GH�}�� "0 readenvironment readEnvironment�  �~ �|�{�z
�| 
outo�{ 	0 plist  �z  G �y�y 	0 plist  H �x�w�v�u�t
�x 
outo�w 0 readlistpair readListPair
�v 
from
�u 
rslt�t &0 environmentstring environmentString�} *�l O*��l  �sp�r�qIJ�p�s 0 readlistpair readListPair�r  �q �o�n�m
�o 
outo�n 	0 plist  �m  I �l�l 	0 plist  J ��k�j�i�h�g�f
�k 
file
�j .coredoexbool        obj 
�i 
plif
�h 
plii
�g 
pnam
�f 
valL�p 1� -*�/j  *�/ *�-[�,\[�,\ZlvEUY jvjvlvU �e��d�cKL�b�e &0 environmentstring environmentString�d  �c �a�`�_
�a 
from�` $0 keyvaluelistpair keyValueListPair�_  K �^�]�\�[�Z�Y�X�^ $0 keyvaluelistpair keyValueListPair�] 0 	plistkeys 	plistKeys�\ 0 plistvalues plistValues�[ 0 accumulator  �Z 0 oldtids oldTIDs�Y 0 i  �X 0 	envstring 	envStringL �W�V�U��T����S�R�Q
�W 
cobj
�V 
ascr
�U 
txdl
�T 
nmbr�S 
�R 
TEXT
�Q 
spac�b i�E[�k/E�Z[�l/E�ZOjvE�O��,E�O���,FO 1k��-�,Ekh ��/��/��vEc  Ob  �&�6G[OY��O���,FO��&E�O���,FO� �PM�O�NNO�M
�P .aevtoappnull  �   � ****M k     0PP  QQ  RR  .�L�L  �O  �N  N  O �K�J�I�H &�G�F�E�D�C�B�A�@�?�>�K 0 updating  �J "0 checksavestatus checkSaveStatus�I "0 modeenvironment modeEnvironment
�H 
for �G $0 doublequotedform doubleQuotedForm�F 0 documentpath documentPath
�E 
strq�D 0 documentline documentLine�C 
�B 
by  
�A 
spac�@ 0 join  �? 0 
viewscript 
viewScript
�> .sysoexecTEXT���     TEXT�M 1*�fl O*j+ *��l *j+ �,*j+ �v��l E�O�j ascr  ��ޭ