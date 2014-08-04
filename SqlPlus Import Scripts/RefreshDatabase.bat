rem set variables
set local_directory=C:\app\%USERNAME%\product\11.2.0\admin\orcl\dpdump\SQLPlusScripts
set database_backup=BACKUP_FILE.dmp

echo Database backup name used: %database_backup%

rem change to the directory we want to be in
cd %local_directory%
echo Changed Directory to:   %local_directory%

rem Restart / Refresh Oracle services
net stop OracleOraDb11g_home2ClrAgent
net stop OracleOraDb11g_home2TNSListener
net stop OracleServiceorcl

net start OracleOraDb11g_home2ClrAgent
net start OracleOraDb11g_home2TNSListener
net start OracleServiceorcl

rem Copy local1 database locally
copy \\cma-azwic\app\oracle\admin\local1\dpdump\%database_backup%.gz

rem Unzip the file copied from the server
 winrar x %database_backup%.gz

rem Copy the extracted file to the parent folder
 copy %database_backup% ..
ECHO.

del /F %database_backup%
del /F %database_backup%.gz

rem Drop the AIM database
sqlplus /nolog @DropAIMUser.sql

rem Go up one folder
cd ../

ECHO.
rem Run the schema scripts
orcl_schema_dpimp.bat

del /F %database_backup%

rem Grant DBMS-LOCK privledges to the AIM user
sqlplus /nolog @GiveAIMUserDBMS_LOCKACCESS.sql
