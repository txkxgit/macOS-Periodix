FasdUAS 1.101.10   ��   ��    k             l     ��  ��    G A#################################################################     � 	 	 � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   
  
 l     ��  ��      macOSPeriodix     �      m a c O S P e r i o d i x      l     ��������  ��  ��        l     ��  ��    + % Run macOS periodic maintenance tasks     �   J   R u n   m a c O S   p e r i o d i c   m a i n t e n a n c e   t a s k s      l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��      Timo Kahle     �      T i m o   K a h l e       l     �� ! "��   !   2014-08-27    " � # #    2 0 1 4 - 0 8 - 2 7    $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   (   Changes    ) � * *    C h a n g e s '  + , + l     �� - .��   -   v1.0 (2014-01-04)    . � / / $   v 1 . 0   ( 2 0 1 4 - 0 1 - 0 4 ) ,  0 1 0 l     �� 2 3��   2   o Initial version    3 � 4 4 $   o   I n i t i a l   v e r s i o n 1  5 6 5 l     �� 7 8��   7       8 � 9 9    6  : ; : l     �� < =��   <   v1.1 (2014-08-27)    = � > > $   v 1 . 1   ( 2 0 1 4 - 0 8 - 2 7 ) ;  ? @ ? l     �� A B��   A / ) + Added Notification when action is done    B � C C R   +   A d d e d   N o t i f i c a t i o n   w h e n   a c t i o n   i s   d o n e @  D E D l     �� F G��   F , & o Reduced to run macOS periodic tasks    G � H H L   o   R e d u c e d   t o   r u n   m a c O S   p e r i o d i c   t a s k s E  I J I l     ��������  ��  ��   J  K L K l     �� M N��   M   v1.1.1 (2014-08-30)    N � O O (   v 1 . 1 . 1   ( 2 0 1 4 - 0 8 - 3 0 ) L  P Q P l     �� R S��   R G A o Fixed minor bug that could lead to the appIcon not being found    S � T T �   o   F i x e d   m i n o r   b u g   t h a t   c o u l d   l e a d   t o   t h e   a p p I c o n   n o t   b e i n g   f o u n d Q  U V U l     �� W X��   W "  + Added macOS version check    X � Y Y 8   +   A d d e d   m a c O S   v e r s i o n   c h e c k V  Z [ Z l     �� \ ]��   \ C = + Added Notification Center notifications for 10.9 and later    ] � ^ ^ z   +   A d d e d   N o t i f i c a t i o n   C e n t e r   n o t i f i c a t i o n s   f o r   1 0 . 9   a n d   l a t e r [  _ ` _ l     ��������  ��  ��   `  a b a l     ��������  ��  ��   b  c d c l     �� e f��   e   v1.2 (2018-09-24)    f � g g $   v 1 . 2   ( 2 0 1 8 - 0 9 - 2 4 ) d  h i h l     �� j k��   j &   o Changed name to macOSPeriodix    k � l l @   o   C h a n g e d   n a m e   t o   m a c O S P e r i o d i x i  m n m l     �� o p��   o   o Exchanged App icon    p � q q *   o   E x c h a n g e d   A p p   i c o n n  r s r l     �� t u��   t + % o Changed strings from OS X to macOS    u � v v J   o   C h a n g e d   s t r i n g s   f r o m   O S   X   t o   m a c O S s  w x w l     �� y z��   y   o Updated BundleID    z � { { &   o   U p d a t e d   B u n d l e I D x  | } | l     �� ~ ��   ~ 3 - - Removed obsolete Notification Center check     � � � Z   -   R e m o v e d   o b s o l e t e   N o t i f i c a t i o n   C e n t e r   c h e c k }  � � � l     �� � ���   � ' ! + Added check for Min OS version    � � � � B   +   A d d e d   c h e c k   f o r   M i n   O S   v e r s i o n �  � � � l     �� � ���   �       � � � �    �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � G A#################################################################    � � � � � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Variables and Constants    � � � � 0   V a r i a b l e s   a n d   C o n s t a n t s �  � � � j     �� ��� 0 appname appName � m      � � � � �  m a c O S   P e r i o d i x �  � � � j    �� ��� 0 
appversion 
appVersion � m     � � � � �  1 . 2 �  � � � j    �� ��� 0 appicon appIcon � m     � � � � �  a p p l e t . i c n s �  � � � l      � � � � j   	 �� ��� 0 timeout_sec TIMEOUT_SEC � m   	 
���� �   60 minutes    � � � �    6 0   m i n u t e s �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Dialog texts    � � � �    D i a l o g   t e x t s �  � � � j    �� ��� "0 dlg_description dlg_Description � m     � � � � � � P e r f o r m i n g   t h e   p e r i o d i c   m a c O S   s c r i p t s   d a i l y ,   w e e k l y   a n d   m o n t h l y .   S e l e c t   R U N   t o   r u n   t h e   t a s k s . �  � � � j    �� ��� *0 dlg_error_cmdfailed dlg_Error_CMDFailed � m     � � � � � � A n   e r r o r   o c c u r e d   d u r i n g   e x e c u t i o n   o f   t h e   c o m m a n d .   P l e a s e   t r y   a g a i n . �  � � � j    �� ��� 0 dlg_success dlg_Success � m     � � � � � < A c t i o n s   s u c c e s s f u l l y   e x e c u t e d . �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � < 6 Maintenance shell commands (require admin privileges)    � � � � l   M a i n t e n a n c e   s h e l l   c o m m a n d s   ( r e q u i r e   a d m i n   p r i v i l e g e s ) �  � � � j    �� ��� 0 cmd_periodic cmd_Periodic � m     � � � � � : p e r i o d i c   d a i l y   w e e k l y   m o n t h l y �  � � � l     ��������  ��  ��   �  � � � j    �� ���  0 min_os_version MIN_OS_VERSION � m     � � � � � 
 1 0 . 1 3 �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � G A#################################################################    � � � � � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Main    � � � � 
   M a i n �  � � � i      � � � I     ������
�� .aevtoappnull  �   � ****��  ��   � k     � � �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � &   Define the app icon for dialogs    � � � � @   D e f i n e   t h e   a p p   i c o n   f o r   d i a l o g s �  � � � r      � � � l    	 ����� � I    	�� ���
�� .sysorpthalis        TEXT � o     ���� 0 appicon appIcon��  ��  ��   � o      ���� 0 dlgicon dlgIcon �  � � � r     � � � b     � � � b       b     o    ���� 0 appname appName m     �    ( o    ���� 0 
appversion 
appVersion � m     �  ) � o      ���� 0 dlgtitle dlgTitle � 	 l   ��������  ��  ��  	 

 Z    F���� =   % I    #�������� (0 osversionsupported OSVersionSupported��  ��   m   # $��
�� boovfals k   ( B  I  ( ?��
�� .sysodlogaskr        TEXT o   ( )���� (0 dlg_osnotsupported dlg_OSNotSupported ��
�� 
appr b   * / b   * - o   * +���� 0 apptitle appTitle m   + , �    o   - .���� 0 	msg_error 	MSG_ERROR ��
�� 
disp m   0 1��
�� stic     �� 
�� 
btns J   2 5!! "��" o   2 3���� 0 btn_ok BTN_OK��    ��#��
�� 
dflt# J   6 9$$ %��% o   6 7���� 0 btn_ok BTN_OK��  ��   &��& L   @ B����  ��  ��  ��   '(' l  G G����~��  �  �~  ( )*) l  G G�}�|�{�}  �|  �{  * +,+ l  G G�z-.�z  - � |set modeSelection to (choose from list optionList with title appName & " (" & appVersion & ")" with prompt UI_PROMPT_SELECT)   . �// � s e t   m o d e S e l e c t i o n   t o   ( c h o o s e   f r o m   l i s t   o p t i o n L i s t   w i t h   t i t l e   a p p N a m e   &   "   ( "   &   a p p V e r s i o n   &   " ) "   w i t h   p r o m p t   U I _ P R O M P T _ S E L E C T ), 010 r   G q232 I  G m�y45
�y .sysodlogaskr        TEXT4 o   G L�x�x "0 dlg_description dlg_Description5 �w67
�w 
appr6 o   M N�v�v 0 dlgtitle dlgTitle7 �u89
�u 
btns8 J   O W:: ;<; m   O R== �>>  C A N C E L< ?�t? m   R U@@ �AA  R U N�t  9 �sBC
�s 
dfltB J   X ]DD E�rE m   X [FF �GG  R U N�r  C �qHI
�q 
cbtnH J   ` eJJ K�pK m   ` cLL �MM  C A N C E L�p  I �oN�n
�o 
dispN o   f g�m�m 0 dlgicon dlgIcon�n  3 o      �l�l 0 myanswer myAnswer1 OPO r   r }QRQ n   r ySTS 1   u y�k
�k 
bhitT o   r u�j�j 0 myanswer myAnswerR o      �i�i 0 myresult myResultP UVU l  ~ ~�h�g�f�h  �g  �f  V WXW Z   ~ �YZ�e�dY =   ~ �[\[ o   ~ ��c�c 0 myresult myResult\ m   � �]] �^^  R U NZ k   � �__ `a` r   � �bcb I   � ��bd�a�b $0 execcommandadmin ExecCommandAdmind e�`e o   � ��_�_ 0 cmd_periodic cmd_Periodic�`  �a  c o      �^�^ 0 	myjobexec 	myJobExeca f�]f Z   � �gh�\ig E   � �jkj o   � ��[�[ 0 	myjobexec 	myJobExeck m   � �ll �mm 
 E r r o rh I  � ��Zno
�Z .sysonotfnull��� ��� TEXTn c   � �pqp o   � ��Y�Y *0 dlg_error_cmdfailed dlg_Error_CMDFailedq m   � ��X
�X 
ctxto �Wrs
�W 
subtr o   � ��V�V 0 	myjobexec 	myJobExecs �Ut�T
�U 
apprt b   � �uvu o   � ��S�S 0 appname appNamev m   � �ww �xx    E R R O R�T  �\  i k   � �yy z{z l  � ��R|}�R  |   Report success   } �~~    R e p o r t   s u c c e s s{ �Q I  � ��P��
�P .sysonotfnull��� ��� TEXT� c   � ���� o   � ��O�O 0 dlg_success dlg_Success� m   � ��N
�N 
ctxt� �M��L
�M 
appr� o   � ��K�K 0 appname appName�L  �Q  �]  �e  �d  X ��J� l  � ��I�H�G�I  �H  �G  �J   � ��� l     �F�E�D�F  �E  �D  � ��� l     �C�B�A�C  �B  �A  � ��� l     �@���@  � G A#################################################################   � ��� � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     �?���?  �   Helper functions   � ��� "   H e l p e r   f u n c t i o n s� ��� l     �>���>  � G A#################################################################   � ��� � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� ��� l     �=�<�;�=  �<  �;  � ��� l     �:�9�8�:  �9  �8  � ��� l     �7���7  � * $ Run a command with admin privileges   � ��� H   R u n   a   c o m m a n d   w i t h   a d m i n   p r i v i l e g e s� ��� i   ! $��� I      �6��5�6 $0 execcommandadmin ExecCommandAdmin� ��4� o      �3�3 0 
thisaction 
thisAction�4  �5  � Q     $���� k    �� ��� l   �2���2  � @ :Introduce timeout to prevent timing out of large transfers   � ��� t I n t r o d u c e   t i m e o u t   t o   p r e v e n t   t i m i n g   o u t   o f   l a r g e   t r a n s f e r s� ��� t    ��� r   	 ��� I  	 �1��
�1 .sysoexecTEXT���     TEXT� l  	 ��0�/� b   	 ��� o   	 
�.�. 0 
thisaction 
thisAction� m   
 �� ��� 
   2 > & 1�0  �/  � �-��,
�- 
badm� m    �+
�+ boovtrue�,  � o      �*�* 0 returnvalue returnValue� o    �)�) 0 timeout_sec TIMEOUT_SEC� ��� l   �(�'�&�(  �'  �&  � ��%� L    �� o    �$�$ 0 returnvalue returnValue�%  � R      �#��"
�# .ascrerr ****      � ****� o      �!�! 0 errmsg errMsg�"  � L     $�� b     #��� m     !�� ���  E r r o r :  � o   ! "� �  0 errmsg errMsg� ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  � !  Retrieve the macOS version   � ��� 6   R e t r i e v e   t h e   m a c O S   v e r s i o n� ��� i   % (��� I      ���� (0 osversionsupported OSVersionSupported�  �  � k     �� ��� r     	��� n     ��� 1    �
� 
sisv� l    ���� I    ���
� .sysosigtsirr   ��� null�  �  �  �  � o      �� 0 strosxversion strOSXVersion� ��� P   
 ���� r    ��� @   ��� o    �� 0 strosxversion strOSXVersion� o    ��  0 min_os_version MIN_OS_VERSION� o      ��  0 issupportedosx IsSupportedOSX� �
�	
�
 consnume�	  �  � ��� l   ����  �  �  � ��� L    �� o    ��  0 issupportedosx IsSupportedOSX�  � ��� l     ����  �  �  � ��� l     � �����   ��  ��  � ��� l     ������  �   Handle onQuit events   � ��� *   H a n d l e   o n Q u i t   e v e n t s� ���� i   ) ,��� I     ������
�� .aevtquitnull��� ��� null��  ��  � L     ����  ��       ��� � � ��� � � � � �������  � ���������������������������� 0 appname appName�� 0 
appversion 
appVersion�� 0 appicon appIcon�� 0 timeout_sec TIMEOUT_SEC�� "0 dlg_description dlg_Description�� *0 dlg_error_cmdfailed dlg_Error_CMDFailed�� 0 dlg_success dlg_Success�� 0 cmd_periodic cmd_Periodic��  0 min_os_version MIN_OS_VERSION
�� .aevtoappnull  �   � ****�� $0 execcommandadmin ExecCommandAdmin�� (0 osversionsupported OSVersionSupported
�� .aevtquitnull��� ��� null��� �� ���������
�� .aevtoappnull  �   � ****��  ��  �  � $������������������������������=@F��L��������]����l����w����
�� .sysorpthalis        TEXT�� 0 dlgicon dlgIcon�� 0 dlgtitle dlgTitle�� (0 osversionsupported OSVersionSupported�� (0 dlg_osnotsupported dlg_OSNotSupported
�� 
appr�� 0 apptitle appTitle�� 0 	msg_error 	MSG_ERROR
�� 
disp
�� stic    
�� 
btns�� 0 btn_ok BTN_OK
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
cbtn�� 
�� 0 myanswer myAnswer
�� 
bhit�� 0 myresult myResult�� $0 execcommandadmin ExecCommandAdmin�� 0 	myjobexec 	myJobExec
�� 
ctxt
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT�� �b  j  E�Ob   �%b  %�%E�O*j+ f  ����%�%����kv��kva  OhY hOb  ���a a lv�a kva a kv��a  E` O_ a ,E` O_ a   S*b  k+ E` O_ a  $b  a &a  _ �b   a !%a " #Y b  a &�b   l #Y hOP� ������������� $0 execcommandadmin ExecCommandAdmin�� ����� �  ���� 0 
thisaction 
thisAction��  � �������� 0 
thisaction 
thisAction�� 0 returnvalue returnValue�� 0 errmsg errMsg� ����������
�� 
badm
�� .sysoexecTEXT���     TEXT�� 0 errmsg errMsg��  �� % b  n��%�el E�oO�W X  �%� ������� ���� (0 osversionsupported OSVersionSupported��  ��    ������ 0 strosxversion strOSXVersion��  0 issupportedosx IsSupportedOSX �����
�� .sysosigtsirr   ��� null
�� 
sisv�� *j  �,E�O�g �b  E�VO�� ���������
�� .aevtquitnull��� ��� null��  ��      �� hascr  ��ޭ