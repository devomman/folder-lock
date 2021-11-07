cls
@ECHO OFF
title Private Locker Folder
Advertisement
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