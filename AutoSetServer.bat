color 97
@echo off
rem �]�wtitle
title=Minecraft Server auto set
mode con cols=70 lines=30
cd %~dp0
echo:
echo:
echo:
echo:
echo   =================================================================
echo   =                                                               =
echo   =                  Minecraft Server Auto set                    =
echo   =                                                               =
echo   =                                                               =
echo   =                          ���UEnter�~��                         =
echo   =                                                               =
echo   =================================================================
echo   =                                                               =
echo   =                 �U��Server.jar    �é�J����Ƨ�                 =
echo   =                                                               =
echo   =================================================================
echo:
echo   = �нT�O"Minecraft���A���[�]�u��"�P"server.jar"�A���P�@��Ƨ� �~�ॿ�`�B�@ =
echo:
echo:
echo:
pause
cls
if exist server.jar goto label2
if not exist server.jar goto label1
:label1
color 4
echo   ERROR     
echo         ���~���e:�����server.jar�A�нT�{server.jar�P���u��b�P�@�Ӹ�Ƨ�����                                                           
color
pause
exit
:label2
echo = �нT�O"Minecraft���A���[�]�u��"�P"server.jar"�A���P�@��Ƨ� =
echo:
echo:
echo �@�B�ˬd���A�����Ҥ�
ping -n 2 127.0.0.1 >NUL
@echo off
echo:
echo �G�B���b�]�w���A���ɮ�
if not exist �I���Ұʦ��A��.bat goto label4
if exist ���A���[�]��.bat goto label3
:label3
if not exist usercache.json goto label5
if exist usercache.json goto label6
:label4
echo java -Xmx4096M -Xms1024M -jar server.jar nogui> �I���Ұʦ��A��.bat
echo:
:label5
call �I���Ұʦ��A��.bat
echo:
ping -n 3 127.0.0.1 >NUL
@echo off
echo �T�B���A���ɮ׳Ыا��� "�I���Ұʦ��A��.bat"
ping -n 3 127.0.0.1 >NUL
@echo off
echo:
echo �|�B���A���Y�N�B��...
ping -n 6 127.0.0.1 >NUL
@echo off
cls
echo:
echo:
echo �|�B���A���Y�N�B��.
ping -n 6 127.0.0.1 >NUL
@echo off
cls
echo �|�B���A���Y�N�B��..
ping -n 6 127.0.0.1 >NUL
@echo off
cls
echo �|�B���A���Y�N�B��...
ping -n 6 127.0.0.1 >NUL
@echo off
cls
echo �|�B���A���Y�N�B��.
ping -n 6 127.0.0.1 >NUL
@echo off
cls
echo �|�B���A���Y�N�B��..
ping -n 6 127.0.0.1 >NUL
@echo off
cls
echo �|�B���A���Y�N�B��...
echo:
echo:
echo:
echo:
echo   =================================================================
echo   =                                                               =
echo   =                                                               =
echo   =               �иԾ\�æP�NMinecraft�ϥΪ̱��v�X��             =
echo   =      https://account.mojang.com/documents/minecraft_eula      =
echo   =                                                               =
echo   =                                                               =
echo   =================================================================
echo   =                                                               =
echo   =                   �T���A���I����N���~��...                 =
echo   =                                                               =
echo   =================================================================
ping -n 6 127.0.0.1 >NUL
@echo off
echo:
echo:
pause
:label6
rem �w�q�ܼƩ������ҡA�����^��
@echo off&setlocal enabledelayedexpansion
rem Ū��eula.txt�Ҧ����e
for /f "eol=* tokens=*" %%i in (eula.txt) do (
rem �]�w�ܼ�a���C�椺�e
set a=%%i
rem �p�G�Ӧ榳false�A�h�N��אּtrue
set "a=!a:false=true!"
rem ��ק�᪺������s�J$
echo !a!>>$)
rem ��$�����e�������eula.txt���e
move $ eula.txt
cls
echo:
echo:
echo:
echo:
echo:
echo   =================================================================
echo   =                                                               =
echo   =                                                               =
echo   =                 �w�P�NMinecraft�ϥΪ̱��v�X��                 =
echo   =                                                               =
echo   =                                                               =
echo   =================================================================
echo   =                                                               =
echo   =                   �T���A�N�۰ʱҰʦ��A��...                 =
echo   =                                                               =
echo   =================================================================
echo:
echo:
ping -n 5 127.0.0.1 >NUL
@echo off
start �I���Ұʦ��A��.bat