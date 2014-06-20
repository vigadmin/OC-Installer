@WMIC CPU Get /Format:List | findstr NumberOfCores > %TEMP%\tmpFile
@set /p CoreCount= < %TEMP%\tmpFile
@set CoreCount=%CoreCount:~-1%

@set regfile=Performance.reg 


@echo -XX:+UseParallelGC >  %regfile%
@echo -XX:ParallelGCThreads=%CoreCount% >> %regfile%
@echo -XX:MaxPermSize=180m >> %regfile%
REM if Webservices are installed - -XX:MaxPermSize=360m
@echo -XX:+CMSClassUnloadingEnabled >> %regfile%



