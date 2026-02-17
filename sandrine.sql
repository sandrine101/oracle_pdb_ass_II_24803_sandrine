--create user
CREATE USER C##sadb_plsqlauca IDENTIFIED BY auca;
GRANT ALL PRIVILEGES TO C##sadb_plsqlauca;

--create pdb
SHOW con_name;
ALTER SESSION SET container = CDB$ROOT;
CREATE PLUGGABLE sadbTABASE sadb_to_delete_pdb
ADMIN USER sadb_plsqlauca IDENTIFIED BY auca
FILE_NAME_CONVERT = ('C:\APP\ORAsadbTA\ORCL\PDBSEED\', 'C:\APP\ORAsadbTA\ORCL\PDBSEED\sadb_to_delete_pdb\');

----after creation this is how you connecto to pdb
ALTER SESSION SET CONTAINER = CDB$ROOT;
CONNECT SYS/12345 AS SYSDBA;
ALTER PLUGGABLE sadbTABASE sadb_to_delete_pdb OPEN;
ALTER SESSION SET CONTAINER = sadb_to_delete_pdb;
ALTER SESSION SET CONTAINER = sadb_to_delete_pdb;
--
------delete pdb
CONNECT SYS/12345 AS SYSDBA;
ALTER SESSION SET CONTAINER = CDB$ROOT;
ALTER PLUGGABLE sadbTABASE sadb_to_delete_pdb CLOSE IMMEDIATE;
DROP PLUGGABLE sadbTABASE sadb_to_delete_pdb INCLUDING sadbTAFILES;
SELECT con_id, name, open_mode FROM v$containers;
