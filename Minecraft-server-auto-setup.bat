@echo off
:mcsasstart

set version=1.4.6

title MCSAST v%version%
if exist StartServer.bat goto bungeecordskip
color B
echo ���b�Ұ�...
ping -n 1 maoyue.tw >nul
cls

if not %errorlevel%==0 (
    echo �L�k�s�u������A�нT�w�z�������s�u��A��
	goto youdonthavejava
)
where java.exe >nul 2>nul
IF NOT ERRORLEVEL 0 (
    @echo       �Х��w�� Java �~����楻�{��
	@echo       �N�۰ʶ}�� Java �U������ �нT�w�U��������A�����楻�{��
	start "" https://adoptium.net/temurin/releases/
	@echo �ݭn���U�ܶܡH �w��e��
	@echo       GitHub�G https://github.com/MagicTeaMC/Minecraft-server-auto-setup
    @echo       Discord�Ghttps://discord.gg/uQ4UXANnP2
	goto youdonthavejava
)
java -version 2> javaversion.txt
findstr /i "17." javaversion.txt > nul
if %errorlevel% equ 0 goto foundJavaVersion
findstr /i "18." javaversion.txt > nul
if %errorlevel% equ 0 goto foundJavaVersion
findstr /i "19." javaversion.txt > nul
if %errorlevel% equ 0 goto foundJavaVersion
findstr /i "20." javaversion.txt > nul
if %errorlevel% equ 0 goto foundJavaVersion
findstr /i "21." javaversion.txt > nul
if %errorlevel% equ 0 goto foundJavaVersion

del javaversion.txt

echo       �Х��w�� Java 17�B18�B19�B20 �� 21 �~����楻�{��
echo       �N�۰ʶ}�� Java �U�������A�нT�w�U��������A�����楻�{��
start "" https://adoptium.net/temurin/releases/
@echo �ݭn���U�ܶܡH �w��e��
@echo       GitHub�G https://github.com/MagicTeaMC/Minecraft-server-auto-setup
@echo       Discord�Ghttps://discord.gg/uQ4UXANnP2
goto youdonthavejava

:foundJavaVersion
del javaversion.txt

setlocal
echo:
echo       ���bŪ���̷s������T....
curl -O https://raw.githubusercontent.com/MagicTeaMC/Minecraft-server-auto-setup/version/version.txt  >NUL 2>NUL
set "file1=./version.txt"

set /p "content1="<"%file1%"

del version.txt
cls

cls
color B
cls
echo:       
echo       #     #  #####   #####     #     #####  ####### 
echo       ##   ## #     # #     #   # #   #     #    #    
echo       # # # # #       #        #   #  #          #    
echo       #  #  # #        #####  #     #  #####     #    
echo       #     # #             # #######       #    #    
echo       #     # #     # #     # #     # #     #    #    
echo       #     #  #####   #####  #     #  #####     #  
echo                    by Maoyue(MagicTeaMC)
echo:
echo       �w��ϥ�  Minecraft server auto setup tool (v%version%)

if not %version% equ %content1% (
    echo       �˴���s�����G v%content1%
)
endlocal

echo:
echo       GitHub�G https://github.com/MagicTeaMC/Minecraft-server-auto-setup
echo       Discord�Ghttps://discord.gg/uQ4UXANnP2
echo:
echo:
echo       �Х���ܤ@�Ӯ֤�
echo:
echo       ������A���֤�
echo       1. Paper (��ĳ)
echo       2. Purpur
echo       3. Pufferfish
echo:
echo       ���y���A���֤�
echo       4. Velocity
echo       5. BungeeCord
echo       6. Waterfall
echo:
echo       �Ҳզ��A���֤�
echo       8. Fabric
echo       9. Forge
echo:
echo       ��L�����֤�
echo       10. Folia
echo       11. Vanilla(�쪩�A)
echo:
echo       12.�ϥΦۭq�֤�
set choice=
set /p choice=       �п�ܤ@��(1~11)�G
if '%choice%'=='1' goto dpaper
if '%choice%'=='2' goto dpurpur
if '%choice%'=='3' goto dpuffer
if '%choice%'=='4' goto dvelocity
if '%choice%'=='5' goto dbungeecord
if '%choice%'=='6' goto dwaterfall
if '%choice%'=='7' goto dfabric
if '%choice%'=='8' goto dforge
if '%choice%'=='9' goto dfolia
if '%choice%'=='10' goto dvanilla
if '%choice%'=='11' goto customcore
echo       ��J���~�A�ЦA�դ@��
PAUSE
cls                          
cd %~dp0
goto mcsasstart

:dpaper
cls
echo:
setlocal
echo:
echo       ���bŪ���̷s������T....
curl -O https://raw.githubusercontent.com/MagicTeaMC/Minecraft-server-auto-setup/version/paper.txt  >NUL 2>NUL
curl -O https://raw.githubusercontent.com/MagicTeaMC/Minecraft-server-auto-setup/version/minecraft.txt  >NUL 2>NUL
set "file1=./paper.txt"
set "file2=./minecraft.txt"

set /p "content1="<"%file1%"
set /p "content2="<"%file2%"

del paper.txt
del minecraft.txt
cls

echo:
echo       �}�l�U�� Paper (MC version %content2%)
curl -O https://api.papermc.io/v2/projects/paper/versions/%content2%/builds/%content1%/downloads/paper-%content2%-%content1%.jar  >NUL 2>NUL
ren paper-*.jar server.jar
cls
echo:
echo:
echo:
echo       Paper (MC version %content2%) �U������
endlocal
:dpapered
:echo
echo       �n�ϥ� Aikar Flags ��?
echo       �o�O�@�Ӧb�Y�Ǳ��p�U�i�H�����A���įണ�ɪ��ҰʰѼ�
echo       ��J1�Y�ϥΡA��J2�Y�ϥιw�]�ҰʰѼ�
set pachoice=
set /p pachoice=       �п�J�z����ܡG
if '%pachoice%'=='1' goto useaikarflag
if '%pachoice%'=='2' goto dontuseaikarflag
echo       ��J���~�A�ЦA�դ@��
goto dpapered

:dpurpur
cls
setlocal
echo:
echo       ���bŪ���̷s������T....
curl -O https://raw.githubusercontent.com/MagicTeaMC/Minecraft-server-auto-setup/version/minecraft.txt  >NUL 2>NUL
set "file=./minecraft.txt"
set /p "content="<"%file%"

del minecraft.txt

cls
echo:
echo       �}�l�U�� Purpur (MC version %content%)
curl -O https://api.purpurmc.org/v2/purpur/%content%/latest/download  >NUL 2>NUL
ren download server.jar
cls
echo:
echo:
echo:
echo       Purpur (MC version %content%) �U������
endlocal
:dpurpured
echo:
echo       �n�ϥ� Aikar Flags ��?
echo       �o�O�@�Ӧb�Y�Ǳ��p�U�i�H�����A���įണ�ɪ��ҰʰѼ�
echo       ��J1�Y�ϥΡA��J2�Y�ϥιw�]�ҰʰѼ�
set puachoice=
set /p puachoice=       �п�J�z����ܡG
if '%puachoice%'=='1' goto useaikarflag
if '%puachoice%'=='2' goto dontuseaikarflag
echo       ��J���~�A�ЦA�դ@��
goto dpurpured

:dpuffer
cls
setlocal
echo:
echo       ���bŪ���̷s������T....
curl -O https://raw.githubusercontent.com/MagicTeaMC/Minecraft-server-auto-setup/version/minecraft.txt  >NUL 2>NUL
set "file=./minecraft.txt"
set /p "content="<"%file%"

del minecraft.txt

cls
echo:
echo       �}�l�U�� Pufferfish (MC version %content%)
curl -O https://ci.pufferfish.host/job/Pufferfish-1.20/lastSuccessfulBuild/artifact/build/libs/pufferfish-paperclip-%content%-R0.1-SNAPSHOT-reobf.jar  >NUL 2>NUL
ren pufferfish-paperclip-%content%-R0.1-SNAPSHOT-reobf.jar server.jar
cls
echo:
echo:
echo:
echo       Pufferfish (MC version %content%) �U������
endlocal
:dpuffered
echo:
echo       �n�ϥ� Aikar Flags ��?
echo       �o�O�@�Ӧb�Y�Ǳ��p�U�i�H�����A���įണ�ɪ��ҰʰѼ�
echo       ��J1�Y�ϥΡA��J2�Y�ϥιw�]�ҰʰѼ�
set puachoice=
set /p puachoice=       �п�J�z����ܡG
if '%puachoice%'=='1' goto useaikarflag
if '%puachoice%'=='2' goto dontuseaikarflag
echo       ��J���~�A�ЦA�դ@��
goto dpuffered

:useaikarflag
echo java -Xms4096M -Xmx4096M --add-modules=jdk.incubator.vector -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -jar server.jar --nogui> StartServer.bat
goto ngrok
:dontuseaikarflag
echo java -Xmx4096M -Xms1024M -jar server.jar nogui >> StartServer.bat
goto ngrok

:dfabric
cls
setlocal
echo:
echo       ���bŪ���̷s������T....
curl -O https://raw.githubusercontent.com/MagicTeaMC/Minecraft-server-auto-setup/version/minecraft.txt  >NUL 2>NUL
curl -O https://raw.githubusercontent.com/MagicTeaMC/Minecraft-server-auto-setup/version/fabric-loader.txt  >NUL 2>NUL
curl -O https://raw.githubusercontent.com/MagicTeaMC/Minecraft-server-auto-setup/version/fabric-installer.txt  >NUL 2>NUL
set "file1=./minecraft.txt"
set "file2=./fabric-loader.txt"
set "file3=./fabric-installer.txt"
set /p "content1="<"%file1%"
set /p "content2="<"%file2%"
set /p "content3="<"%file3%"
del minecraft.txt
del fabric-loader.txt
del fabric-installer.txt
cls
echo:
echo       �}�l�U�� Fabric (MC version %content1%)
curl -O https://meta.fabricmc.net/v2/versions/loader/%content1%/%content2%/%content3%/server/jar  >NUL 2>NUL
ren jar server.jar
cls
echo:
echo:
echo:
echo       Fabric (MC version %content1%) �U������
echo java -Xmx4096M -Xms1024M -jar server.jar nogui> StartServer.bat
endlocal
goto ngrok

:dforge
cls
setlocal
echo:
echo       ���bŪ���̷s������T....
curl -O https://raw.githubusercontent.com/MagicTeaMC/Minecraft-server-auto-setup/version/minecraft.txt  >NUL 2>NUL
curl -O https://raw.githubusercontent.com/MagicTeaMC/Minecraft-server-auto-setup/version/forge.txt  >NUL 2>NUL
set "file1=./minecraft.txt"
set "file2=./forge.txt"
set /p "content1="<"%file1%"
set /p "content2="<"%file2%"
del minecraft.txt
del forge.txt
echo:
echo       �}�l�U�� Forge �w�˵{�� (MC version %content1%)
curl -O https://maven.minecraftforge.net/net/minecraftforge/forge/%content1%-%content2%/forge-%content1%-%content2%-installer.jar  >NUL 2>NUL
ren forge-*.jar installer.jar
cls
echo:
echo       Forge �w�˵{�� (MC version %content1%) �U������
echo:
echo       �}�l�w�� Forge ���A��(�o�i��ݭn�@�q�ɶ�)
endlocal
java -jar installer.jar --installServer  >NUL 2>NUL
del installer.jar
del installer.jar.log
del installer.log
del run.sh
ren run.bat StartServer.bat
goto ngrok

:dfolia
cls
echo:
echo       �}�l�U�� Folia (MC version 1.20.1)
curl -O https://cdn.discordapp.com/attachments/891325967736385569/1138438159814897714/folia-paperclip-1.20.1-R0.1-SNAPSHOT-reobf.jar  >NUL 2>NUL
ren folia-paperclip-1.20.1-R0.1-SNAPSHOT-reobf.jar server.jar
cls
echo:
echo:
echo:
echo       Folia (MC version 1.20.1) �U������
:dfoliaed
echo:
echo       �n�ϥ� Aikar Flags ��?
echo       �o�O�@�Ӧb�Y�Ǳ��p�U�i�H�����A���įണ�ɪ��ҰʰѼ�
echo       ��J1�Y�ϥΡA��J2�Y�ϥιw�]�ҰʰѼ�
set puachoice=
set /p puachoice=       �п�J�z����ܡG
if '%puachoice%'=='1' goto useaikarflag
if '%puachoice%'=='2' goto dontuseaikarflag
echo       ��J���~�A�ЦA�դ@��
goto dfoliaed

:useaikarflag
echo java -Xms4096M -Xmx4096M --add-modules=jdk.incubator.vector -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -jar server.jar --nogui> StartServer.bat
goto ngrok
:dontuseaikarflag
echo java -Xmx4096M -Xms1024M -jar server.jar nogui >> StartServer.bat
goto ngrok

:dbungeecord
cls
echo:
echo       �}�l�U�� BungeeCord
curl -O https://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar  >NUL 2>NUL
ren BungeeCord.jar server.jar
cls
echo:
echo:
echo:
cls
echo:
echo       BungeeCord �U������
echo java -Xmx512M -Xms124M -jar server.jar nogui> StartServer.bat
goto bungeengrok

:dwaterfall
cls
setlocal
echo:
echo       ���bŪ���̷s������T....
curl -O https://raw.githubusercontent.com/MagicTeaMC/Minecraft-server-auto-setup/version/waterfall.txt  >NUL 2>NUL
set "file1=./waterfall.txt"
set /p "content1="<"%file1%"
del waterfall.txt
cls
echo:
echo       �}�l�U�� Waterfall
curl -O https://api.papermc.io/v2/projects/waterfall/versions/1.20/builds/%content1%/downloads/waterfall-1.20-%content1%.jar  >NUL 2>NUL
ren waterfall-1.20-%content1%.jar server.jar
cls
echo:
echo:
echo:
echo       Waterfall �U������
echo java -Xmx512M -Xms124M -jar server.jar nogui> StartServer.bat
endlocal
goto bungeengrok

:dvelocity
cls
setlocal
echo:
echo       ���bŪ���̷s������T....
curl -O https://raw.githubusercontent.com/MagicTeaMC/Minecraft-server-auto-setup/version/velocity.txt  >NUL 2>NUL
set "file1=./velocity.txt"
set /p "content1="<"%file1%"
del velocity.txt
cls
echo:
echo       �}�l�U�� Velocity
curl -O https://api.papermc.io/v2/projects/velocity/versions/3.2.0-SNAPSHOT/builds/%content1%/downloads/velocity-3.2.0-SNAPSHOT-%content1%.jar  >NUL 2>NUL
ren velocity-3.2.0-SNAPSHOT-%content1%.jar server.jar
cls
echo:
echo:
echo:
echo       Velocity �U������
echo java -Xmx512M -Xms124M -jar server.jar nogui> StartServer.bat
endlocal
goto bungeengrok

:dvanilla
cls
echo:
echo       �}�l�U�� Vanilla (MC version 1.20.2)
curl -O https://piston-data.mojang.com/v1/objects/5b868151bd02b41319f54c8d4061b8cae84e665c/server.jar  >NUL 2>NUL
cls
echo:
echo:
echo:
echo       Vanilla (MC version 1.20.2) �U������
echo java -Xmx4096M -Xms1024M -jar server.jar nogui> StartServer.bat
goto ngrok

:customcore
echo:
echo:
echo       �бN .jar �ɮש�b���{���ۦP�ؿ��U������N��(.jar �ɮפ������R�W)
PAUSE
if exist *.jar (
    goto haveserverjar
) else (
    @echo       �䤣�� .jar �ɮסA�ЦA�դ@��
	goto customcore
)
:haveserverjar
echo:
ren *.jar server.jar
cls
echo:
echo:
echo:
echo       ���A�� .jar �ɮ׳B�z����
echo java -Xmx4096M -Xms1024M -jar server.jar nogui> StartServer.bat
goto ngrok

:ngrok
cls
echo:
echo       �n�]�w NGROK ��?
echo       �o�O�@�ӥi�H���b���P�Ӻ������ҤU���H�[�J���A�����u��
echo       ��J1�Y�}�l�]�w�A��J2�Y���L
set nchoice=
set /p nchoice=       �п�J�z����ܡG
if '%nchoice%'=='1' goto yngrok
if '%nchoice%'=='2' goto labe51
echo       ��J���~�A�ЦA�դ@��
PAUSE
cls                          
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
echo       NGROK�]�w����
goto labe51

:bungeengrok
cls
echo:
echo       �n�]�w NGROK ��?
echo       �o�O�@�ӥi�H���b���P�Ӻ������ҤU���H�[�J���A�����u��
echo       ��J1�Y�}�l�]�w�A��J2�Y���L
set nchoice=
set /p nchoice=       �п�J�z����ܡG
if '%nchoice%'=='1' goto ybngrok
if '%nchoice%'=='2' goto allsetup
echo       ��J���~�A�ЦA�դ@��
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
set /p nchoice2=       �п�J Auth token�G
.\ngrok.exe config add-authtoken %nchoice2%
echo ngrok.exe tcp 25565 >> StartNgrok.bat
echo       NGROK �]�w����
goto allsetup

:labe51
mode con cols=70 lines=30
color B                
cls
echo:
echo:
echo:
echo       ���b�]�w�ɮ�......
echo       �o�i��ݭn�@�q�ɶ�
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
cd %~dp0
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
echo       �Ы����N��P�N Minecraft EULA
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

if '%choice%'=='4' goto allsetup
if '%choice%'=='5' goto allsetup
if '%choice%'=='6' goto allsetup
if '%choice%'=='7' goto allsetup
if '%choice%'=='8' goto allsetup
if '%choice%'=='9' goto allsetup
if '%choice%'=='10' goto allsetup
if '%choice%'=='11' goto allsetup

md plugins  >NUL 2>NUL
:plugins
cls
echo:
echo       �n�w�ˤ@�Ǵ����?
echo       �ϥδ���i�H�����A���K�[��h��Υ\��
echo       �z�]�i�H�ۦ�H�U�����U�������A��J plugins ��Ƨ��᭫�Ҧ��A��
echo       https://modrinth.com
:secondplugin
echo:
echo:
echo:
echo       1. EssentialsX - ���A�������i�֪�����A�]�A 130 �h�ӫ��O�M�L�ƥ\��I 
echo       2. LuckPerms - Minecraft ���A�����v������]Bukkit/Spigot�BBungeeCord ���^
echo       3. CoreProtect - �ֳt�B���Ī�����x�O���B�^�u�M��_
echo       4. WorldEdit - �@�ӹ�Ϊ� Minecraft �a�Ͻs�边�C
echo       ��h����Y�N�s�W....
echo       �п�J 5 ��������w��
echo:
echo       �`�N�G����w�˧�����Цۦ�]�w����A������k�Цۦ�ǲ�
set pchoice=
set /p pchoice=       �п�J�z�����(1~5)�G
if '%pchoice%'=='1' goto EssentialsX
if '%pchoice%'=='2' goto LuckPerms
if '%pchoice%'=='3' goto CoreProtect
if '%pchoice%'=='4' goto WorldEdit
if '%pchoice%'=='5' goto allsetup
echo       ��J���~�A�ЦA�դ@��
PAUSE
cls                          
goto plugins

:EssentialsX
cls
echo:
echo       ���b�U�� EssentialsX
cd ./plugins
curl -O https://cdn.discordapp.com/attachments/944809403054452736/1160774954523033631/EssentialsX-2.21.0-dev17-79449ef.jar  >NUL 2>NUL
cd ../
cls
echo:
echo �٭n�w�˨�L����ܡH
goto secondplugin

:LuckPerms
cls
echo:
echo       ���b�U�� LuckPerms
cd ./plugins
curl -O https://cdn.discordapp.com/attachments/944809403054452736/1160773804226793492/LuckPerms-Bukkit-5.4.104.jar  >NUL 2>NUL
cd ../
cls
echo:
echo �٭n�w�˨�L����ܡH
goto secondplugin

:CoreProtect
cls
echo:
echo       ���b�U�� CoreProtect
cd ./plugins
curl -O https://cdn.discordapp.com/attachments/944809403054452736/1160783093989384223/CoreProtect-22.2.jar  >NUL 2>NUL
cd ../
cls
echo:
echo �٭n�w�˨�L����ܡH
goto secondplugin

:WorldEdit
cls
echo:
echo       ���b�U�� WorldEdit
cd ./plugins
curl -O https://cdn.discordapp.com/attachments/944809403054452736/1164122515682103357/worldedit-bukkit-7.2.17.jar  >NUL 2>NUL
cd ../
cls
echo:
echo �٭n�w�˨�L����ܡH
goto secondplugin

:bungeecordskip
:allsetup
color B
echo:                                                                
echo       ���A���]�w���\�I  
cls                                                                               
echo       �Y�N�Ұʦ��A��...                
@echo off
start StartServer.bat
ping -n 3 127.0.0.1 >NUL
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('���A���w�g�w�˧����A����u�n�Ұ�"StartServer.bat"�Y�i�A�åB�i�ϥ�"stop"���O�������A��(BungeeCord�Х�"end")�C�p�G�z���]�wNGROK�A�Цb�C���}�A�ɦۦ�Ұ�StartNgrok.bat�A�~�������a�s�u�ܥ~��', 'Minecraft server auto setup tool (���n�T���A�иԲӾ\Ū)', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}" >NUL
cls
echo       �P�±z���ϥΡA�Ы����N���������{��
:youdonthavejava
PAUSE