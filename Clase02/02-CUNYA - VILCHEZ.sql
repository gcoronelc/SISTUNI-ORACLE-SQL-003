/*
1. Desarrolle una sentencia SELECT para calcular el importe de la 
planilla del departamento de ventas. Debe incluir el sueldo y 
la comisión. Esquemas SCOTT y RH. 
*/
SELECT 'RECUR - VENTAS' DEPARTMENT, SUM(SUELDO) SALARY
FROM RECURSOS.EMPLEADO 
WHERE IDDEPARTAMENTO = 103
UNION
SELECT 'SCOTT - VENTAS' DEPARTMENT, SUM(SAL) SALARY
FROM SCOTT.EMP
WHERE DEPTNO = 30; 

/*
2. Desarrolle una sentencia SELECT para encontrar el mayor y menor
sueldo en el departamento de ventas. Esquema SCOTT y RH. 
*/
SELECT 'SCOTT - SALARIO', MIN(SAL) MINIMO, MAX(SAL) MAXIMO 
FROM SCOTT.EMP WHERE DEPTNO = 30
UNION
SELECT 'RECUR - SALARIO', MIN(SUELDO) MINIMO, MAX(SUELDO) MAXIMO 
FROM RECURSOS.EMPLEADO 
WHERE IDDEPARTAMENTO = 103;

/*
3. Desarrolle una sentencia SELECT para encontrar el salario
promedio en la empresa. Esquemas SCOTT y RH. 
*/
SELECT 'SCOTT - SALARIO - PROMEDIO', ROUND(AVG(SAL),2) PROMEDIO
FROM SCOTT.EMP
UNION
SELECT 'RECUR - SALARIO - PROMEDIO', ROUND(AVG(SUELDO),2) PROMEDIO
FROM RECURSOS.EMPLEADO;

/*
4. Se necesita saber la cantidad de empleados que hay en el 
departamento de ventas Esquemas SCOTT y RH. 
*/
SELECT 'SCOTT', COUNT(1) CANTIDAD
FROM SCOTT.EMP e
WHERE e.DEPTNO = 30
UNION
SELECT 'RECUR', COUNT(1) CANTIDAD
FROM RECURSOS.EMPLEADO
WHERE IDDEPARTAMENTO = 103;

/*
5. Se necesita saber el importe de la planilla del departamento 
de ventas, con comisión y sin comisión. Esquemas SCOTT y RH. 
*/
--5.1 SCOTT
SELECT SUM(e.SAL) "sin comision", SUM(e.SAL + nvl(e.COMM, 0))  "comision"
FROM SCOTT.EMP e
WHERE DEPTNO = 30;

--5.2 RH
SELECT SUM(e.SUELDO) "sin comision", SUM(e.SUELDO + nvl(e.COMISION, 0))  "comision"
FROM RECURSOS.EMPLEADO e
WHERE e.IDDEPARTAMENTO = 103;

/*
6. Del curso SQL Server Administración se necesita 
saber la cantidad de alumnos 
matriculados y a cuánto asciende el importe que se 
proyecta recaudar hasta el 
momento. Esquema EDUCA. 
*/

SELECT count(*) "TOTAL MATRICULADOS", sum(MAT_PRECIO) IMPORTE
FROM EDUCA.MATRICULA;

/*
7. Se necesita saber cuál es el importe recaudado hasta 
el momento del curso SQL 
Server Administración. Esquema EDUCA.
*/
SELECT  sum(MAT_PRECIO) IMPORTE
FROM EDUCA.MATRICULA
WHERE CUR_ID = (SELECT CUR_ID FROM educa.CURSO 
WHERE CUR_NOMBRE = 'SQL Server Administración');



