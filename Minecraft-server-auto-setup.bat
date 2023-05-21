@echo off
:mcsasstart
if exist StartServer.bat goto bungeecordskip
color B
echo       �w��ϥ�  Minecraft server auto setup tool (v1.2.0)
echo       GitHub�G https://github.com/MagicTeaMC/Minecraft-server-auto-setup
echo:
where java.exe >nul 2>nul
IF NOT ERRORLEVEL 0 (
    @echo       �Х��w�� Java �~����楻�{��
	goto youdonthavejava
)
cls
color B
echo:
echo       �w��ϥ�  Minecraft server auto setup tool (v1.2.0)
echo       GitHub�G https://github.com/MagicTeaMC/Minecraft-server-auto-setup
echo:
echo:
echo       �Х���ܤ@�Ӯ֤�
echo:
echo       ������A���֤�
echo       1 �� Spigot
echo       2 �� CraftBukkit
echo       3 �� Paper (��ĳ)
echo       4 �� Purpur
echo:
echo       ���y���A���֤�
echo       5 �� BungeeCord
echo       6 �� Waterfall
echo       7 �� Velocity
echo:
echo       �Ҳզ��A���֤�
echo       8 �� Fabric
echo:
echo       ��L�����֤�
echo       9 �� Folia
echo:
echo       10 ���ϥΦۭq�֤�
set choice=
set /p choice=�п�ܤ@�ӡG
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto dspigot
if '%choice%'=='2' goto dcraftbukkit
if '%choice%'=='3' goto dpaper
if '%choice%'=='4' goto dpurpur
if '%choice%'=='5' goto dbungeecord
if '%choice%'=='6' goto dwaterfall
if '%choice%'=='7' goto dvelocity
if '%choice%'=='8' goto dfabric
if '%choice%'=='9' goto dfolia
if '%choice%'=='10' goto customcore
echo ��J���~�A�ЦA�դ@��
PAUSE
cls                          
cd %~dp0
goto mcsasstart

:dpaper
echo:
echo:
echo:
echo       �}�l�U�� server.jar(Paper) (MC version 1.19.4)
curl -O https://api.papermc.io/v2/projects/paper/versions/1.19.4/builds/538/downloads/paper-1.19.4-538.jar  >NUL 2>NUL
ren paper-1.19.4-538.jar server.jar
cls
echo:
echo:
echo:
echo       server.jar(Paper) (MC version 1.19.4) �U������
echo java -Xmx4096M -Xms1024M -jar server.jar nogui> StartServer.bat
goto ngrok

:dpurpur
echo:
echo:
echo:
echo       �}�l�U�� server.jar(Purpur) (MC version 1.19.4)
curl -O https://api.purpurmc.org/v2/purpur/1.19.4/latest/download  >NUL 2>NUL
ren download server.jar
cls
echo:
echo:
echo:
echo       server.jar(Purpur) (MC version 1.19.4) �U������
echo java -Xmx4096M -Xms1024M -jar server.jar nogui> StartServer.bat
goto ngrok

:dcraftbukkit
echo:
echo:
echo:
echo       �}�l�U�� server.jar(CraftBukkit) (MC version 1.19.4)
curl -O https://download.getbukkit.org/craftbukkit/craftbukkit-1.19.4.jar  >NUL 2>NUL
ren craftbukkit-1.19.4.jar server.jar
cls
echo:
echo:
echo:
echo       server.jar(CraftBukkit) (MC version 1.19.4) �U������
echo java -Xmx4096M -Xms1024M -jar server.jar nogui> StartServer.bat
goto ngrok

:dspigot
echo:
echo:
echo:
echo       �}�l�U�� server.jar(Spigot) (MC version 1.19.4)
curl -O https://download.getbukkit.org/spigot/spigot-1.19.4.jar  >NUL 2>NUL
ren spigot-1.19.4.jar server.jar
cls
echo:
echo:
echo:
echo       server.jar(Spigot) (MC version 1.19.4) �U������
echo java -Xmx4096M -Xms1024M -jar server.jar nogui> StartServer.bat
goto ngrok

:dfabric
echo:
echo:
echo:
echo       �}�l�U�� server.jar(Fabric) (MC version 1.19.4)
curl -O https://meta.fabricmc.net/v2/versions/loader/1.19.4/0.14.19/0.11.2/server/jar  >NUL 2>NUL
ren jar server.jar
cls
echo:
echo:
echo:
echo       server.jar(Fabric) (MC version 1.19.4) �U������
echo java -Xmx4096M -Xms1024M -jar server.jar nogui> StartServer.bat
goto ngrok

:dfolia
echo:
echo:
echo:
echo       �}�l�U�� server.jar(Folia) (MC version 1.19.4)
curl -O https://github.com/MagicTeaMC/Folia-CI/releases/download/Build-202305182113/folia-paperclip-1.19.4-R0.1-SNAPSHOT-reobf.jar  >NUL 2>NUL
ren folia-paperclip-1.19.4-R0.1-SNAPSHOT-reobf.jar server.jar
cls
echo:
echo:
echo:
echo       server.jar(Folia) (MC version 1.19.4) �U������
echo java -Xmx4096M -Xms1024M -jar server.jar nogui> StartServer.bat
goto ngrok

:dbungeecord
echo:
echo:
echo:
echo       �}�l�U�� server.jar(BungeeCord) (MC version 1.19.X)
curl -O https://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar  >NUL 2>NUL
ren BungeeCord.jar server.jar
cls
echo:
echo:
echo:
echo       server.jar(BungeeCord) (MC version 1.19.X) �U������
echo java -Xmx512M -Xms124M -jar server.jar nogui> StartServer.bat
goto bungeengrok

:dwaterfall
echo:
echo:
echo:
echo       �}�l�U�� server.jar(Waterfall) (MC version 1.19.X)
curl -O https://api.papermc.io/v2/projects/waterfall/versions/1.19/builds/526/downloads/waterfall-1.19-526.jar  >NUL 2>NUL
ren waterfall-1.19-526.jar server.jar
cls
echo:
echo:
echo:
echo       server.jar(Waterfall) (MC version 1.19.X) �U������
echo java -Xmx512M -Xms124M -jar server.jar nogui> StartServer.bat
goto bungeengrok

:dvelocity
echo:
echo:
echo:
echo       �}�l�U�� server.jar(Velocity) (MC version 1.19.X)
curl -O https://api.papermc.io/v2/projects/velocity/versions/3.2.0-SNAPSHOT/builds/256/downloads/velocity-3.2.0-SNAPSHOT-256.jar  >NUL 2>NUL
ren velocity-3.2.0-SNAPSHOT-256.jar server.jar
cls
echo:
echo:
echo:
echo       server.jar(Waterfall) (MC version 1.19.X) �U������
echo java -Xmx512M -Xms124M -jar server.jar nogui> StartServer.bat
goto bungeengrok

:ngrok
echo       �n�]�w NGROK ��?
echo       �o�O�@�ӥi�H���b���P�Ӻ������ҤU���H�[�J���A�����u��
echo       ��J1�Y�}�l�]�w�A��J2�Y���L
set nchoice=
set /p nchoice=�п�J�z����ܡG
if not '%choice%'=='' set choice=%choice:~0,1%
if '%nchoice%'=='1' goto yngrok
if '%nchoice%'=='2' goto labe51
echo ��J���~�A�ЦA�դ@��
PAUSE
cls                          
goto ngrok

:customcore
echo:
echo:
echo �бN .jar �ɮש�b���{���ۦP�ؿ��U������N��
PAUSE
if exist *.jar (
    goto haveserverjar
) else (
    @echo �䤣�� .jar �ɮסA�ЦA�դ@��
	goto customcore
)
:haveserverjar
echo:
ren *.jar server.jar
cls
echo:
echo:
echo:
echo       server.jar �B�z����
echo java -Xmx4096M -Xms1024M -jar server.jar nogui> StartServer.bat
goto ngrok

:yngrok
echo:
echo:
echo:
echo       �Y�N�}�l�U�� NGROK
curl -O https://download-ngrok.pages.dev/ngrok.exe >NUL 2>NUL
cls
echo:
echo:
echo:
echo       �Ыe�� NGROK ���O��� Auth token
echo:
echo:
echo       ���b�۰ʶ}�� NGROK ���O....
start "" https://dashboard.ngrok.com/get-started/your-authtoken
echo:
echo:
echo       �p�G�S���۰ʶ}�ҡA�Ф�ʫe�������}�G https://dashboard.ngrok.com/get-started/your-authtoken
set nchoice2=
set /p nchoice2=�п�J Auth token�G
.\ngrok.exe config add-authtoken %nchoice2%
echo ngrok.exe tcp 25565 >> StartNgrok.bat
echo NGROK�]�w����
goto labe51

:bungeengrok
echo       �n�]�w NGROK ��?
echo       �o�O�@�ӥi�H���b���P�Ӻ������ҤU���H�[�J���A�����u��
echo       ��J1�Y�}�l�]�w�A��J2�Y���L
set nchoice=
set /p nchoice=�п�J�z����ܡG
if not '%choice%'=='' set choice=%choice:~0,1%
if '%nchoice%'=='1' goto ybngrok
if '%nchoice%'=='2' goto allsetup
echo ��J���~�A�ЦA�դ@��
PAUSE
cls                          
goto bungeengrok

:ybngrok
echo:
echo:
echo:
echo       �Y�N�}�l�U�� NGROK
curl -O https://download-ngrok.pages.dev/ngrok.exe >NUL 2>NUL
cls
echo:
echo:
echo:
echo       �Ыe�� NGROK ���O��� Auth token
echo:
echo:
echo       ���b�۰ʶ}�� NGROK ���O....
start "" https://dashboard.ngrok.com/get-started/your-authtoken
echo:
echo:
echo       �p�G�S���۰ʶ}�ҡA�Ф�ʫe�������}�G https://dashboard.ngrok.com/get-started/your-authtoken
set nchoice2=
set /p nchoice2=�п�J Auth token�G
.\ngrok.exe config add-authtoken %nchoice2%
echo ngrok.exe tcp 25565 >> StartNgrok.bat
echo NGROK �]�w����
goto allsetup

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
echo       �o�i��ݭn�@�q�ɶ�
if not exist StartServer.bat goto label5
if exist ���A���[�]��.bat goto label3
:label3
if not exist usercache.json goto label5
if exist usercache.json goto label6
:label4
:label5
call StartServer.bat >NUL 2>NUL
:mceula
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
echo       ���A���Y�N�}�l�B��......
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
PAUSE
cls                          
goto mceula
:label6
@echo off&setlocal enabledelayedexpansion
for /f "eol=* tokens=*" %%i in (eula.txt) do (
set a=%%i
set "a=!a:false=true!"
echo !a!>>$)
move $ eula.txt
cls
:bungeecordskip
:allsetup
color B
echo:                                                                
echo       ���A���]�w���\�I  
cls                                                                               
echo       �Y�N�Ұʦ��A��...                
@echo off
start StartServer.bat
ping -n 5 127.0.0.1 >NUL
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('���A���w�g�w�˧����A����u�n�Ұ�"StartServer.bat"�Y�i�A�åB�i�ϥ�"stop"���O�������A��(BungeeCord�Х�"end")�C�p�G�z���]�wNGROK�A�Цb�C���}�A�ɦۦ�Ұ�StartNgrok.bat�A�~�������a�s�u�ܥ~��', 'Minecraft server auto setup tool (���n�T���A�иԲӾ\Ū)', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}" >NUL
cls
echo �P�±z���ϥΡA�Ы����N���������{��
:youdonthavejava
PAUSE