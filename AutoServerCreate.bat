color 7
@echo off
echo:
echo       ���b�w�˦��A���ɮ� [server.jar]
echo:
echo:                                                     
echo:                       
echo:                                                                             
echo:                 
echo:                   
echo:                   
echo:                             
:labe50
cd %~dp0
curl https://download.getbukkit.org/craftbukkit/craftbukkit-1.19.3.jar -o C:server
ren server server.jar
:labe51
@echo off
rem �]�wtitle
title=Minecraft Server auto set
mode con cols=70 lines=30
echo:
echo:
echo:
echo:
color 3                
echo                  Server.jar�ɮפw�w�˧���
echo:  
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
ping -n 3 127.0.0.1 >NUL
@echo off
echo �T�B���A���ɮ׳Ыا��� "StartServer.bat"
ping -n 3 127.0.0.1 >NUL
@echo off
echo:
echo �|�B���A���Y�N�B��...
ping -n 6 127.0.0.1 >NUL
@echo off
cls
color 4
echo:
echo:
echo:
echo:
echo                      �иԲӾ\ŪMinecraft EULA
echo:                                                                  
echo:                              
echo        https://account.mojang.com/documents/minecraft_eula      
echo:                                                                  
echo:                                                                  
echo:  
echo:                                                                
echo                          ���ݤT��                 
echo:                                                                 
echo:   
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
echo: 
echo:                                                             
echo:                                                                  
echo                          ���A�����\�[�]����                
echo:                                                                 
echo:                                                                  
echo:   
echo:                                                                  
echo                           �N�۰ʱҰʦ��A��...                
echo:                                                                 
echo:  
echo:
echo:
ping -n 5 127.0.0.1 >NUL
@echo off
start StartServer.bat