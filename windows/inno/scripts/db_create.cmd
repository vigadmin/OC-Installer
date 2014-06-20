@ECHO OFF
if "%1"=="32" (@SET PF="%PROGRAMFILES%") else (@SET PF="%PROGRAMFILES(X86)%")

@SET PGPASSWORD=%3

%PF%\PostgreSQL\8.4\bin\psql.exe -U %2 -f db_create.sql 

