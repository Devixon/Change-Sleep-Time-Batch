## Contents
* [General info](#general-info)
* [Why?](#why)
* [File](#file)
* [How Use](#how-use)
* [How Edit](#how-edit)

## General info
This is batch file for changing sleep time in windows 10 without having to go to settings.   
_Maybe work on other windows but I not tested._

## Why?
I created it because I don't need my PC to always go to sleep and it annoyed me when I had whenever to go into settings to change the sleep time.
Sometimes I leave my PC for "1 minute" longer than I have set sleep time and it goes to sleep and I immediately wake it up. **It's pointless.**   
Thanks to this batch file I no longer have to worry about my PC going to sleep just when I sit down at it.

## File
Here is two file **Change Sleep Time.bat** and **Change Sleep Time Battery.bat**.

* Change Sleep Time.bat - this batch change sleep time in **plugged in** (AC).
* Change Sleep Time Battery.bat - this batch change sleep time in **on battery** (DC).

## How Use
* You must use the **"Balanced (recommended)"** power plan. If you want to use a different plan check [How Edit](#how-edit).
1. Duble click on batch file.
2. Press any key.

![Image](https://user-images.githubusercontent.com/77416716/229752115-243c25a3-9797-438a-aa84-e4b22c9e3913.gif)

## How Edit
### Time
If you want set other time you must open batch file in editor and change value in variable **time**.  
Second line in file.
```
set time=15
```
Standard max time is 300 (min/5h) in windows. I haven't tested longer time.

### Power plan
Different plan you can set if you find the **regedit path** for your plan and **edit batch file**.  
Third line in file.
```
reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\User\PowerSchemes\381b4222-f694-41f0-9685-ff5bb260df2e\238c9fa8-0aad-41ed-83f4-97be242c8f20\29f6c1db-86da-48c5-9fdb-f2b67b1f44da" /v "ACSettingIndex" | Find "0x0"
```
This is Path
```
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\User\PowerSchemes\381b4222-f694-41f0-9685-ff5bb260df2e\238c9fa8-0aad-41ed-83f4-97be242c8f20\29f6c1db-86da-48c5-9fdb-f2b67b1f44da
```
### Remember
```
ACSettingIndex -- is for "plugged in" (AC)
```
```
DCSettingIndex -- is for "on battery" (DC)
```

#### Other editions I leave to your invention. Regards!
