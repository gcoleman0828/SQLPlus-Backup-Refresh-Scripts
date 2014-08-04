SQLPlus-Backup-Refresh-Scripts
==============================

Using windows batch scripts, Retrieves and imports a remote database. These scripts are to get you started and assist developers unfaimilar with the batch script or SqlPlus code and assist them in accessing external scripts in SqlPlus commands. This is not a fully import system which would require us to know what datbases and users you wish to import

YOU NEED TO PROVIDE YOUR OWN ORACLE IMPORT FILES


What needs to be updated for your custom machine

- Install WinRar
- drop SqlPlusScripts into the dpdump folder in oracle
- Unzip the zip file.
- Add any users you want to Drop in DropUser.sql
- Change local_directory variable to the path of your script files

- Update the sql file (DropAIMUser.sql) with the correct connection information if not using orcl as your Oracle sid
- Provide import scripts and update Refresh database to point to correct location
- Change StartDatabase.sql password
- Change StopDatabase.sql password

You can download WinRAr from http://www.rarlab.com/download.htm

In any of the scripts where you need to update the database password, the portion of the script will look like the following:
<b>conn sys/yourOraclePassword@orcl as sysdba</b>

Third line of the RefreshDatabase batch script:
<b>BACKUP_FILE</b> You need to change to your backup file and location if different from where you placed your scripts.
