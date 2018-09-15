----========================================----
--- AGRUPACION DE DATOS 
----========================================----


--8. Desarrolle una sentencia SELECT para encontrar el sueldo promedio por
--departamento. Esquema SCOTT y RH.
SELECT DEPTNO , ROUND(AVG(SAL),2) SUELDO_PROMEDIO FROM SCOTT.EMP GROUP BY DEPTNO ORDER BY 1;
SELECT IDDEPARTAMENTO,ROUND(AVG(SUELDO),2) SUELDO_PROMEDIO FROM RECURSOS.EMPLEADO GROUP BY IDDEPARTAMENTO ORDER BY 1;

--9. Desarrolle una sentencia SELECT para encontrar el importe recaudado por curso.
--Esquema EDUCA.

SELECT CUR_ID,SUM(PAG_IMPORTE) AS IMP_RECAUDADO FROM EDUCA.PAGO GROUP BY CUR_ID order BY 1;


--10. Se necesita saber el sueldo máximo, sueldo mínimo y el sueldo promedio por
--departamento. Esquemas SCOTT y RH.

SELECT DEPTNO,MAX(SAL) "Maximo",MIN(SAL) "Minimo ",ROUND(AVG(SAL),2) "Promedio" FROM SCOTT.EMP GROUP BY DEPTNO ORDER BY 1;

SELECT IDDEPARTAMENTO,MAX(sueldo) "Maximo",MIN(sueldo) "Minimo ",ROUND(AVG(sueldo),2) "Promedio" FROM RECURSOS.EMPLEADO GROUP BY IDDEPARTAMENTO ORDER BY 1;


--11. Se necesita saber cuántos empleados hay por departamento. Esquemas SCOTT y RH.
SELECT DEPTNO,COUNT(1) CANT_EMP FROM SCOTT.EMP GROUP BY DEPTNO;
SELECT IDDEPARTAMENTO,COUNT(1) CANT_EMP FROM RECURSOS.EMPLEADO GROUP BY IDDEPARTAMENTO;

--12. Se necesita saber cuántos empleados han ingreso por año en cada departamento. Esquemas SCOTT y RH.

SELECT DEPTNO,TO_CHAR(EXTRACT(YEAR FROM HIREDATE )) ANIO,COUNT(1) CANT FROM SCOTT.EMP GROUP BY DEPTNO,EXTRACT(YEAR FROM HIREDATE ) ORDER BY 1,2;
SELECT IDDEPARTAMENTO,TO_CHAR(EXTRACT(YEAR FROM FECINGRESO )) ANIO ,COUNT(1) FROM RECURSOS.EMPLEADO GROUP BY IDDEPARTAMENTO ,EXTRACT(YEAR FROM FECINGRESO ) ORDER BY 1,2;

--13. De cada departamento se necesita saber la cantidad de empleados, el importe de la planilla y el sueldo promedio. Esquemas SCOTT y RH.
SELECT DEPTNO,COUNT(EMPNO) CANT_EMP,SUM(SAL + COALESCE(COMM,0)) IMP_PLA,ROUND(AVG(SAL), 2) SUE_PRO FROM SCOTT.EMP GROUP BY DEPTNO;
SELECT IDDEPARTAMENTO,COUNT(IDEMPLEADO) CANT_EMP, SUM(SUELDO + COALESCE(COMISION,0)) IMP_PLA,ROUND(AVG(SUELDO), 2)  SUE_PRO FROM RECURSOS.EMPLEADO GROUP BY IDDEPARTAMENTO;

--14. De cada curso se necesita saber la cantidad de alumnos matriculados y el importe que se tiene proyectado recaudar por los alumnos matriculados. Esquema EDUCA.

SELECT CUR_ID,SUM(CUR_MATRICULADOS) CANT_MAT,SUM(CUR_MATRICULADOS * CUR_PRECIO)  PROYECCION FROM EDUCA.CURSO GROUP BY CUR_ID  ORDER BY 1;