color B
@echo off
echo:
echo       �}�l�U�� purpur.jar (MC version 1.19.3)                   
echo:                             
:labe50
cd %~dp0
curl -O https://api.purpurmc.org/v2/purpur/1.19.3/latest/download
ren download purpur.jar
:labe51
@echo off
rem setting title
title=Minecraft server auto setup tool
mode con cols=70 lines=30
color B                
echo                  purpur.jar(MC version:1.19.3) �U�����\
pause
cls
@echo off
echo:
echo ���b�]�w�ɮ�......
if not exist StartServer.bat goto label4
if exist ���A���[�]��.bat goto label3
:label3
if not exist usercache.json goto label5
if exist usercache.json goto label6
:label4
echo java -Xmx4096M -Xms1024M -jar purpur.jar nogui> StartServer.bat
echo:
:label5
call StartServer.bat
echo:
@echo off
echo �]�w�����I
cls
@echo off
echo:
echo ���A���Y�N�}�l�B��......
ping -n 6 127.0.0.1 >NUL
@echo off
cls
color B
echo                      �иԲӾ\Ū Minecraft EULA
echo:                                                                  
echo:                              
echo        https://account.mojang.com/documents/minecraft_eula                                                                      
echo:   
ping -n 3 127.0.0.1 >NUL
@echo off
echo:
echo:
pause
:label6
@echo off&setlocal enabledelayedexpansion
rem Ū��eula.txt�Ҧ����e
for /f "eol=* tokens=*" %%i in (eula.txt) do (
rem �ܼ�a���C�椺�e
set a=%%i
rem �p�G�Ӧ榳false�A�h�N��אּtrue
set "a=!a:false=true!"
rem ��ק�᪺������s�J$
echo !a!>>$)
rem ��$�����e�������eula.txt���e
move $ eula.txt
cls
echo:                                                                
echo ���A���]�w���\�I  
cls                                                                               
echo                           �Y�N�Ұʦ��A��...                
@echo off
start StartServer.bat
