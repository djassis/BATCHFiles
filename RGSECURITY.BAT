@echo off
IF "%COMPUTERNAME%" == "SRV-PDC" GOTO EXITME
IF "%PROCESSOR_ARCHITECTURE%" == "x86" GOTO INSTALLVIR86
pushd \\PFARAH.LAN\SysVol\PFARAH.LAN\Policies\{B8EC6174-1279-4C1C-BC59-43724B571AFE}\Machine\Scripts\Startup\epskit_x64\
epskit_x64.exe /bdparams /silent
Popd
goto EXITME

:INSTALLVIR86
pushd \\PFARAH.LAN\SysVol\PFARAH.LAN\Policies\{B8EC6174-1279-4C1C-BC59-43724B571AFE}\Machine\Scripts\Startup\epskit_x86\
epskit_x86.exe /bdparams /silent
Popd

:EXITME
exit /b 0

