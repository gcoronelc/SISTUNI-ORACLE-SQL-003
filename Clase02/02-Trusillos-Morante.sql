-- FUNCIONES AGREGADAS 
-- =====================


--1. Desarrolle una sentencia SELECT para calcular el importe de la planilla del
--departamento de ventas. Debe incluir el sueldo y la comisión. Esquemas SCOTT y RH.


SELECT   SUM (SAL+COALESCE(COMM,0)) FROM SCOTT.EMP WHERE DEPTNO=30;
SELECT  SUM(SUELDO+COALESCE(COMISION,0))  FROM RECURSOS.EMPLEADO WHERE IDDEPARTAMENTO=103;


--2. Desarrolle una sentencia SELECT para encontrar el mayor y menor sueldo en el
--departamento de ventas. Esquema SCOTT y RH.

SELECT  MAX(SAL) MAX_SUELDO , MIN(SAL) MIN_SUELDO  FROM SCOTT.EMP WHERE DEPTNO=30;
SELECT MAX(SUELDO) MAX_SUELDO , MIN(SUELDO) MIN_SUELDO FROM RECURSOS.EMPLEADO WHERE IDDEPARTAMENTO=103;

--3. Desarrolle una sentencia SELECT para encontrar el salario promedio en la empresa.
--Esquemas SCOTT y RH.

SELECT  ROUND(AVG(SAL),2) FROM SCOTT.EMP ;
SELECT ROUND(AVG(SUELDO),2) FROM RECURSOS.EMPLEADO;


--4. Se necesita saber la cantidad de empleados que hay en el departamento de ventas.
--Esquemas SCOTT y RH.


SELECT COUNT(EMPNO) FROM SCOTT.EMP WHERE DEPTNO=30;
SELECT COUNT(IDEMPLEADO) FROM RECURSOS.EMPLEADO WHERE IDDEPARTAMENTO=103;


--5. Se necesita saber el importe de la planilla del departamento de ventas, con comisión y sin comisión. Esquemas SCOTT y RH.


SELECT SUM(SAL) IMP_SIN_COMI ,SUM(SAL+COALESCE(COMM,0)) IMP_CON_COMI FROM SCOTT.EMP WHERE DEPTNO IN (SELECT DEPTNO FROM SCOTT.DEPT WHERE UPPER(DNAME)='SALES') ;

SELECT SUM(SUELDO) IMP_SIN_COMI ,SUM(SUELDO+COALESCE(COMISION,0)) IMP_CON_COMI FROM RECURSOS.EMPLEADO WHERE IDDEPARTAMENTO IN (SELECT IDDEPARTAMENTO FROM RECURSOS.DEPARTAMENTO WHERE UPPER(NOMBRE)='VENTAS');


--6. Del curso SQL Server Administración se necesita 
-- saber la cantidad de alumnos matriculados y a cuánto 
-- asciende el importe que se proyecta recaudar hasta el momento. 
-- Esquema EDUCA.

SELECT CUR_MATRICULADOS,(CUR_MATRICULADOS*CUR_PRECIO) PROYECCION 
FROM EDUCA.CURSO 
WHERE CUR_NOMBRE='SQL Server Administración';

--7. Se necesita saber cuál es el importe recaudado hasta 
-- el momento del curso SQL Server Administración. 
-- Esquema EDUCA.

SELECT SUM(PAG_IMPORTE) 
FROM EDUCA.PAGO 
WHERE CUR_ID IN 
(SELECT CUR_ID FROM EDUCA.CURSO 
WHERE CUR_NOMBRE='SQL Server Administración') ;



SELECT * FROM educa.curso;
SELECT * FROM educa.matricula;






