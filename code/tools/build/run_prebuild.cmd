@echo off
set ROOT=%~dp0

powershell -ExecutionPolicy Bypass "%ROOT%\run_prebuild.ps1" %*
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERROR] PowerShell script failed with exit code %ERRORLEVEL%.
    echo.
) else (
    echo.
    echo [INFO] PowerShell script completed successfully.
    echo.
)

pause
