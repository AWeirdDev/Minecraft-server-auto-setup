
@echo off
if exist StartServer.bat goto bungeecordskip
color B
echo       �w��ϥ�  Minecraft server auto setup tool (v1.0.2)
echo       GitHub�G https://github.com/MagicTeaMC/Minecraft-server-auto-setup
echo       �Х���ܤ@�Ӯ֤�
echo:
echo       �@����A���֤�
echo       1 �� Spigot(��ĳ)
echo       2 �� CraftBukkit
echo       3 �� Paper
echo       4 �� Purpur
echo:
echo       ���y�t�ή֤�
echo       5 �� BungeeCord(��ĳ)
echo       6 �� Waterfall
set choice=
set /p choice=�п�ܤ@�ӡG
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto dspigot
if '%choice%'=='2' goto dcraftbukkit
if '%choice%'=='3' goto dpaper
if '%choice%'=='4' goto dpurpur
if '%choice%'=='5' goto dbungeecord
if '%choice%'=='6' goto dwaterfall
echo ��J���~�A�ЦA�դ@��                          
cd %~dp0
goto start
:dpaper
echo:
echo:
echo:
echo       �}�l�U�� server.jar(Paper) (MC version 1.19.3)
curl -O https://api.papermc.io/v2/projects/paper/versions/1.19.3/builds/413/downloads/paper-1.19.3-413.jar
ren paper-1.19.3-413.jar server.jar
cls
echo:
echo:
echo:
echo       server.jar(Paper) (MC version 1.19.3) �U������
goto labe51

:dpurpur
echo:
echo:
echo:
echo       �}�l�U�� server.jar(Purpur) (MC version 1.19.3)
curl -O https://api.purpurmc.org/v2/purpur/1.19.3/latest/download
ren download server.jar
cls
echo:
echo:
echo:
echo       server.jar(Purpur) (MC version 1.19.3) �U������
goto labe51

:dcraftbukkit
echo:
echo:
echo:
echo       �}�l�U�� server.jar(CraftBukkit) (MC version 1.19.3)
curl -O https://download.getbukkit.org/craftbukkit/craftbukkit-1.19.3.jar
ren craftbukkit-1.19.3.jar server.jar
cls
echo:
echo:
echo:
echo       server.jar(CraftBukkit) (MC version 1.19.3) �U������
goto labe51

:dspigot
echo:
echo:
echo:
echo       �}�l�U�� server.jar(Spigot) (MC version 1.19.3)
curl -O https://download.getbukkit.org/spigot/spigot-1.19.3.jar
ren spigot-1.19.3.jar server.jar
cls
echo:
echo:
echo:
echo       server.jar(Spigot) (MC version 1.19.3) �U������
goto labe51

:dbungeecord
echo:
echo:
echo:
echo       �}�l�U�� server.jar(BungeeCord) (MC version 1.19.X)
curl -O https://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar
ren BungeeCord.jar server.jar
cls
echo:
echo:
echo:
echo       server.jar(BungeeCord) (MC version 1.19.X) �U������
echo java -Xmx512M -Xms124M -jar server.jar nogui> StartServer.bat
goto bungeecordskip

:dwaterfall
echo:
echo:
echo:
echo       �}�l�U�� server.jar(Waterfall) (MC version 1.19.X)
curl -O https://api.papermc.io/v2/projects/waterfall/versions/1.19/builds/511/downloads/waterfall-1.19-511.jar
ren waterfall-1.19-511.jar server.jar
cls
echo:
echo:
echo:
echo       server.jar(Waterfall) (MC version 1.19.X) �U������
echo java -Xmx512M -Xms124M -jar server.jar nogui> StartServer.bat
goto bungeecordskip

:labe51
@echo off
title=Minecraft server auto setup tool
mode con cols=70 lines=30
color B                
cls
@echo off
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
color B
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
@echo off
echo:
echo:
set eulayn=
set /p eulayn=�п�J"1"�P�N Minecraft EULA�G
if not '%eulayn%'=='' set choice=%choice:~0,1%
if '%eulayn%'=='1' goto label6
echo ��J���~�A�ЦA�դ@�� 
:label6
@echo off&setlocal enabledelayedexpansion
for /f "eol=* tokens=*" %%i in (eula.txt) do (
set a=%%i
set "a=!a:false=true!"
echo !a!>>$)
move $ eula.txt
cls
goto bungeecordskip
:bungeecordskip
color B
echo:                                                                
echo       ���A���]�w���\�I  
cls                                                                               
echo       �Y�N�Ұʦ��A��...                
@echo off
start StartServer.bat
ping -n 5 127.0.0.1 >NUL
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('���A���w�g�w�˧����A����u�n�Ұ�"StartServer.bat"�Y�i�A�åB�i�ϥ�"stop"���O�������A��(BungeeCord�Х�"end")�C', 'Minecraft server auto setup tool', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"
cls
echo �P�±z���ϥΡA�Ы����N���������{��
PAUSE