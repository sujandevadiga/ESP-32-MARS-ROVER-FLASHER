@echo off
setlocal
title Mars Rover Flasher
powershell.exe -NoProfile -ExecutionPolicy Bypass -STA -File "%~dp0MarsRoverFlasher.ps1"
if errorlevel 1 (
  echo.
  echo Mars Rover Flasher could not start. Check that Windows PowerShell is enabled.
  pause
)
endlocal
