@echo off
title VSCode Right Click Menu - Developed by Sherif H Elkhouly

:menu
cls
echo ====================================================
echo                Welcome to the VSCode Right Click Menu
echo ====================================================
echo        This project is developed by Sherif H Elkhouly
echo                    Powered by dylanu.com
echo ====================================================
echo 1. Add Visual Studio Code to Right Click Menu
echo 2. Remove Visual Studio Code from Right Click Menu
echo 3. Exit
echo ====================================================
set /p choice=Choose an option (1-3): 

if "%choice%"=="1" goto :add
if "%choice%"=="2" goto :remove
if "%choice%"=="3" exit

:add
cls
echo Adding Visual Studio Code to Right Click Menu...
REG ADD "HKEY_CLASSES_ROOT\Directory\Background\shell\VSCode" /v "Icon" /t REG_SZ /d "\"C:\Users\sherif\AppData\Local\Programs\Microsoft VS Code\Code.exe\"" /f
REG ADD "HKEY_CLASSES_ROOT\Directory\Background\shell\VSCode\command" /ve /t REG_SZ /d "\"C:\Users\sherif\AppData\Local\Programs\Microsoft VS Code\Code.exe\" ." /f
cls
echo ====================================================
echo Visual Studio Code has been added successfully!
echo ====================================================
goto :done

:remove
cls
echo Removing Visual Studio Code from Right Click Menu...
REG DELETE "HKEY_CLASSES_ROOT\Directory\Background\shell\VSCode" /f
cls
echo ====================================================
echo Visual Studio Code has been removed successfully!
echo ====================================================
goto :done

:done
echo 1. Back to Menu
echo 2. Exit
set /p choice=Choose an option (1-2): 

if "%choice%"=="1" goto :menu
if "%choice%"=="2" exit
goto :done
