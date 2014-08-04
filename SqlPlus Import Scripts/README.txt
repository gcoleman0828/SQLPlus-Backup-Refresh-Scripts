Add any users you want to Drop in DropUser.sql


What needs to be updated for your custom machine

- Install WinRar
- drop SqlPlusScripts into the dpdump folder in oracle
- Unzip the zip file.
- Change local_directory variable to the path of your script files

- Update the sql file (DropAIMUser.sql) with the correct connection information if not using orcl as your Oracle sid
- Provide import scripts and update Refresh database to point to correct location
- Change StartDatabase.sql password
- Change StopDatabase.sql password