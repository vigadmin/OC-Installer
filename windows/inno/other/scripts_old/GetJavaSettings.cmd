@WMIC CPU Get /Format:List | findstr NumberOfCores > %TEMP%\tmpFile
@set /p CoreCount= < %TEMP%\tmpFile
@set CoreCount=%CoreCount:~-1%

@set regfile=javaSettings.reg 


@echo -XX:MaxPermSize=180m > %regfile%



