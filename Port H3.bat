@ECHO OFF
mkdir \tempsnd\
CLS
ECHO 1.Install H3 MP
ECHO 2.Install H3 MP Without DLC
ECHO 3.Install H3 SP
ECHO 4.Install ODST
ECHO 5.Remove Metagame Properties (Fix SP crashes after NPC kills)
ECHO 6.Replace Main Menu
ECHO.

CHOICE /C 123456 /M "Enter your choice:"

IF ERRORLEVEL 6 GOTO MM
IF ERRORLEVEL 5 GOTO RMM
IF ERRORLEVEL 4 GOTO ODST
IF ERRORLEVEL 3 GOTO H3SP
IF ERRORLEVEL 2 GOTO H3MPNDLC
IF ERRORLEVEL 1 GOTO H3MP

:H3MP
ECHO Porting Halo 3 Multiplayer maps
Type halo3mp.cmds | TagTool.exe
GOTO End

:H3MPNDLC
ECHO Porting Halo 3 Multiplayer maps without DLC
Type halo3mpndlc.cmds | TagTool.exe
GOTO End

:H3SP
ECHO Porting Halo 3 Singleplayer maps
Type halo3sp.cmds | TagTool.exe
GOTO End

:ODST
ECHO Porting Halo ODST maps
Type halo3odst.cmds | TagTool.exe
GOTO End

:RMM
ECHO Porting Halo ODST maps
Type rmmeta.cmds | TagTool.exe
GOTO End

:MM
ECHO Porting Halo ODST maps
Type mainmenu.cmds | TagTool.exe
GOTO End

:End
ECHO Port Complete ...
ECHO Cleaning up some files
del \tempsnd\ /F /Q
ECHO Remember tagtool is still in a indev state, meaning maps might crash

pause