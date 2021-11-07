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
title Private Locker Folder
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST private goto MDPRIVATE
:CONFIRM
echo Are you sure u want to Lock the private folder(Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}
echo Private Folder locked
goto End
:UNLOCK
echo Enter password to Unlock private locker
set/p "pass=>"
if NOT %pass%==Your-Password-Here goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" private
echo Private Folder Unlocked successfully
goto End
:FAIL
echo Invalid password
goto end
:MDPRIVATE
md private
echo Private locker created successfully
goto End
:End
```
- Step 4. Find Your-Password-Here and replace it with the password that you want to lock the folder with. For example: ```MK21*)6ee73```
![GitHub Logo](/images/lock-folder-via-txt-2.webp)
- Step 5. Click File > Save As > Select All Files at the Save as type section.
![GitHub Logo](/images/lock-folder-via-txt-3.webp)
- Step 6. Name the file as Folderprivate.bat and click Save. 
![GitHub Logo](/images/lock-folder-via-txt-4.webp)
- Step 7. Double-click the Folderprivate file to generate a private folder.
![GitHub Logo](/images/lock-folder-via-txt-5.webp)
- Step 8. Drag or move all the files that you need to protect into the private folder.
![GitHub Logo](/images/lock-folder-via-txt-6.webp)
- Step 9. Click the Folderprivate file again, type Y in the command prompt window, and hit Enter to confirm that you want to lock the folder.
![GitHub Logo](/images/lock-folder-via-txt-7.webp)
- Step 10. Now the folder is locked and you can barely see it in its original location.
![GitHub Logo](/images/lock-folder-via-txt-8.webp)
- To unlock the folder, click the Folderprivate file, enter your password in the command prompt window, and hit Enter.
![GitHub Logo](/images/lock-folder-via-txt-9.webp)
