/*
8. Desarrolle una sentencia SELECT para encontrar el
 sueldo promedio por departamento. Esquema SCOTT y RH.
*/
SELECT DEPTNO, ROUND(AVG(SAL),2) AS PROMEDIO
FROM SCOTT.EMP
GROUP BY DEPTNO
UNION
SELECT IDDEPARTAMENTO, ROUND(AVG(SUELDO), 2)
FROM RECURSOS.EMPLEADO
GROUP BY IDDEPARTAMENTO;

/*
9. Desarrolle una sentencia SELECT para encontrar el
 importe recaudado por curso. Esquema EDUCA.  
*/
SELECT CUR_ID, SUM(PAG_IMPORTE) TOTAL
FROM EDUCA.PAGO
GROUP BY CUR_ID;

/*
10. Se necesita saber el sueldo máximo, sueldo mínimo y el 
sueldo promedio por departamento. Esquemas SCOTT y RH. 
*/
SELECT 'SCOTT', DEPTNO, MIN(SAL) MINIMO, MAX(SAL) MAXIMO, 
		ROUND(AVG(SAL),2) PROMEDIO 
FROM SCOTT.EMP 
GROUP BY DEPTNO
UNION
SELECT 'RECURSOS', IDDEPARTAMENTO, MIN(SUELDO) MINIMO, 
		MAX(SUELDO) MAXIMO, ROUND(AVG(SUELDO),2)
FROM RECURSOS.EMPLEADO 
GROUP BY IDDEPARTAMENTO;

/*
11. Se necesita saber cuántos empleados hay por
 departamento. Esquemas SCOTT y RH
*/
SELECT DEPTNO, COUNT(1) CANTIDAD
FROM SCOTT.EMP
GROUP BY DEPTNO
UNION
SELECT IDDEPARTAMENTO,  COUNT(1) CANTIDAD
FROM RECURSOS.EMPLEADO
GROUP BY IDDEPARTAMENTO;

/*
12. Se necesita saber cuántos empleados han ingreso 
por año en cada departamento. 
Esquemas SCOTT y RH. 
*/
--SCOTT
SELECT  
  TO_CHAR(HIREDATE, 'YYYY') "AÑO", 
  DEPTNO "DEPARTAMENTO", 
  COUNT(1) "TOTAL"
FROM SCOTT.EMP
GROUP BY TO_CHAR(HIREDATE, 'YYYY'), DEPTNO;
--HR
SELECT 
  TO_CHAR(FECINGRESO, 'YYYY') "AÑO", 
  IDDEPARTAMENTO "DEPARTAMENTO", 
  COUNT(1) "TOTAL"
FROM RECURSOS.EMPLEADO
GROUP BY TO_CHAR(FECINGRESO, 'YYYY'), IDDEPARTAMENTO;

/*
13. De cada departamento se necesita saber la cantidad de empleados, el importe de la 
planilla y el sueldo promedio. Esquemas SCOTT y RH. 
*/
SELECT DEPTNO, COUNT(1) "TOTAL EMPLEADO", SUM( SAL + NVL(COMM, 0)) "IMPORTE PLANILLA", ROUND(AVG(SAL), 2) "SUELDO PROMEDIO" 
FROM SCOTT.EMP 
GROUP BY DEPTNO;


SELECT IDDEPARTAMENTO, COUNT(1) "TOTAL EMPLEADO", SUM( SUELDO + NVL(COMISION, 0)) "IMPORTE PLANILLA", ROUND(AVG(SUELDO), 2) "SUELDO PROMEDIO" 
FROM RECURSOS.EMPLEADO
GROUP BY IDDEPARTAMENTO;


/*
14. De cada curso se necesita saber la cantidad de 
alumnos matriculados y el importe que 
se tiene proyectado recaudar por los alumnos 
matriculados. Esquema EDUCA. 
*/

SELECT CUR_ID, COUNT(1) "MATRICULADOS", SUM(MAT_PRECIO) AS "PROYECTADO"
FROM EDUCA.MATRICULA
GROUP BY CUR_ID;