@echo off
setlocal

set /p doBuild=Do you want to build the project? (y/n): 

if /i "%doBuild%"=="y" (
    echo === Building Project ===

    call .\fxd gen -game five

    call .\fxd build 

    if %errorlevel% neq 0 (
        echo Build failed with error code %errorlevel%.
        pause
        exit /b %errorlevel%
    )
    echo === Build Successful! ===
) else (
    echo Skipping build...
)


echo === Launching FiveM ===
rem start cmd /k ""E:\JayM\fivem\code\bin\five\debug\FiveM.exe""
start "" "E:\JayM/fivem\code\bin\five\debug\FiveM.exe"
