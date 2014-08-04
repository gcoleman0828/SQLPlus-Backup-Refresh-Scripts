-- Used to connect to local database and drop the AIM user and database
conn sys/yourOraclePassword@orcl as sysdba
shutdown;
startup;
alter user system identified by symorcl2013;
drop user aim cascade;
exit