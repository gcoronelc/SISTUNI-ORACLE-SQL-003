CONNECT / AS SYSDBA

ALTER SYSTEM SET db_domain='uni.edu.pe' SCOPE=SPFILE;

SHUTDOWN IMMEDIATE

STARTUP


-- conexion remota

CONN system/oracle@172.17.3.91:1521/orcl.uni.edu.pe