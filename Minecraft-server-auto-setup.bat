color B
@echo off
echo       �w��ϥ�  Minecraft server auto setup tool
echo       �Х���ܤ@�Ӯ֤ߪ���
echo       1 �� Spigot(��ĳ)
echo       2 �� CraftBukkit
echo       2 �� Paper
echo       3 �� Purpur
set choice=
set /p choice=�п�ܤ@�ӡG
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto dspigot
if '%choice%'=='2' goto dcraftbukkit
if '%choice%'=='3' goto dpaper
if '%choice%'=='4' goto dpurpur
echo "%choice%" ��J���~�A�ЦA�դ@��
echo.
echo:
echo:
echo:
echo       �}�l�U�� server.jar (MC version 1.19.3)                   
echo:  
echo:
echo:                           
cd %~dp0
goto start
:dpaper
curl -O https://api.papermc.io/v2/projects/paper/versions/1.19.3/builds/413/downloads/paper-1.19.3-413.jar
ren paper-1.19.3-413.jar server.jar
goto end
:dpurpur
curl -O https://api.purpurmc.org/v2/purpur/1.19.3/latest/download
ren download server.jar
goto end
:dcraftbukkit
curl -O https://download.getbukkit.org/craftbukkit/craftbukkit-1.19.3.jar
ren craftbukkit-1.19.3.jar server.jar
goto end
:dspigot
curl -O https://download.getbukkit.org/spigot/spigot-1.19.3.jar
ren spigot-1.19.3.jar server.jar
goto end
:labe51
@echo off
rem setting title
title=Minecraft server auto setup tool
mode con cols=70 lines=30
color B                
echo       server.jar(MC version:1.19.3) �U�����\
pause
cls
@echo off
echo:
echo:
echo:
echo:
echo       ���b�]�w�ɮ�......
if not exist StartServer.bat goto label4
if exist ���A���[�]��.bat goto label3
:label3
if not exist usercache.json goto label5
if exist usercache.json goto label6
:label4
echo java -Xmx4096M -Xms1024M -jar server.jar nogui> StartServer.bat
echo:
:label5
call StartServer.bat
echo:
@echo off
echo:
echo:
echo:
echo:
echo       �]�w�����I
cls
@echo off
echo:
echo ���A���Y�N�}�l�B��......
ping -n 6 127.0.0.1 >NUL
@echo off
cls
color B
echo:
echo:
echo:
echo       �иԲӾ\Ū Minecraft EULA
echo:                                                                  
echo:                              
echo       https://account.mojang.com/documents/minecraft_eula                                                                      
echo:   
ping -n 3 127.0.0.1 >NUL
@echo off
echo:
echo:
pause
:label6
@echo off&setlocal enabledelayedexpansion
for /f "eol=* tokens=*" %%i in (eula.txt) do (
set a=%%i
set "a=!a:false=true!"
echo !a!>>$)
move $ eula.txt
cls
echo:                                                                
echo       ���A���]�w���\�I  
cls                                                                               
echo       �Y�N�Ұʦ��A��...                
@echo off
start StartServer.bat
