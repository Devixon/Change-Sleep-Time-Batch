@echo off
set time=15
reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\User\PowerSchemes\381b4222-f694-41f0-9685-ff5bb260df2e\238c9fa8-0aad-41ed-83f4-97be242c8f20\29f6c1db-86da-48c5-9fdb-f2b67b1f44da" /v "DCSettingIndex" | Find "0x0"
cls
if %errorlevel% equ 0 (
  powercfg /change standby-timeout-dc %time%
  echo Sleep time enabled and set on %time% min
) else (
  powercfg /change standby-timeout-dc 0
  echo Sleep time disabled
)
pause