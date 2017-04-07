:: Name:     git-to-svn
:: Purpose:  move WordPress git repository structure to svn dir
:: Author:   @allysonsouza
:: URL:      https://github.com/allysonsouza
:: Version:  0.0.1
:: License:  GPL-v2

@ECHO OFF
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

:: variables
SET me=%~n0
SET interactive=0

:: config
SET plugin=your-plugin-slug :: Plugin slug, will be name of the folder in svn
SET version=0.0.0 :: Plugin version number, used to create the tag folder in svn
SET svndir=C:\svn\%plugin% :: Plugin dir followed with plugin slug

:: dirs
SET assets=%svndir%\assets\
SET tag=%svndir%\tags\%version%\
SET trunk=%svndir%\trunk\

ECHO %CMDCMDLINE% | FINDSTR /L %COMSPEC% >NUL 2>&1
IF %ERRORLEVEL% == 0 SET interactive=1

:: assets
xcopy "..\assets\*.png" "%assets%" /y
xcopy "..\assets\*.svg" "%assets%" /y
xcopy "..\assets\*.jpg" "%assets%" /y

:: trunk
xcopy "..\readme.txt" "%trunk%" /y

:: tag
xcopy "..\*" "%tag%" /exclude:ignore.txt /s

IF "%interactive%"=="0" PAUSE
EXIT /B 0
