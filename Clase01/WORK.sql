CONNECT / AS SYSDBA

ALTER SYSTEM SET db_domain='uni.edu.pe' SCOPE=SPFILE;

SHUTDOWN IMMEDIATE

STARTUP


-- conexion remota

CONN system/oracle@172.17.3.91:1521/orcl.uni.edu.pe


-- Habilitar SCOTT

alter user scott
identified by tiger
account unlock;

-- CONSULTAS A UNA TABLA

SELECT * | < lista_de_columnas y/o expresiones > 
FROM [ esquema . ] < nombre_de_tabla >;


select * from eureka.cliente;

select 
chr_cliecodigo codigo, 
vch_cliepaterno || ' ' || vch_cliematerno || ', ' || vch_clienombre nombre
from eureka.cliente;







