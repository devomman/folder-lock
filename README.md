### Password Lock a Folder via Batch File
- Tool: TXT batch file - manual way to password protect your folder.

> If you prefer not using third-party software to password protect a folder, you can try this method to create a TXT batch file and save it into your target folder to lock it.

#### How to Use:
- Step 1. Open the target folder, right-click an empty area and select New.
- Step 2. Select Text Document and open the file.
![GitHub Logo](/images/lock-folder-via-txt-1.webp)
- Step 3. Paste the following text into the new text document: 

```
cls
@ECHO OFF
title Folder Locker
Advertisement
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Locker goto MDLOCKER
:CONFIRM
echo Are you sure u want to Lock the folder(Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren Locker "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}
echo Folder locked
goto End
:UNLOCK
echo Enter password to Unlock folder
set/p "pass=>"
if NOT %pass%==Your-Password-Here goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Locker
echo Folder Unlocked successfully
goto End
:FAIL
echo Invalid password
goto end
:MDLOCKER
md Locker
echo Locker created successfully
goto End
:End
```
