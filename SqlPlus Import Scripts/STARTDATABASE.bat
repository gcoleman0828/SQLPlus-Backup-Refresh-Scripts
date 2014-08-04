@echo off

rem Restart / Refresh Oracle services
net stop OracleOraDb11g_home2ClrAgent
net stop OracleOraDb11g_home2TNSListener
net stop OracleServiceorcl

net start OracleOraDb11g_home2ClrAgent
net start OracleOraDb11g_home2TNSListener
net start OracleServiceorcl

sqlplus /nolog @StartOracle.sql



