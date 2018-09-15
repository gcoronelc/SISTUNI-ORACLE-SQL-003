1._ Desarrolle una sentencia SELECT para calcular el importe de la planilla del 
departamento de ventas. Debe incluir el sueldo y la comisión. 
Esquemas SCOTT y RH.

select e.*,(sal + comm) TOTAL
from scott.emp e
where deptno=30 and comm is not null;

select e.*,(sueldo + comision) TOTAL
from RECURSOS.empleado e
where idcargo='C05' and comision is not null


2._ Desarrolle una sentencia SELECT para encontrar el mayor y menor sueldo en el 
departamento de ventas. 
Esquema SCOTT y RH.

SELECT MAX(SAL), MIN(SAL)
FROM SCOTT.emp
WHERE DEPTNO ='30';

SELECT MAX(SUELDO), MIN(SUELDO)
FROM RECURSOS.EMPLEADO
WHERE IDDEPARTAMENTO ='103';


3._ Desarrolle una sentencia SELECT para encontrar el salario promedio en la empresa. 
Esquemas SCOTT y RH.

select ROUND(AVG(sal) ,2) PROMEDIA
from scott.emp e;


select ROUND(AVG(sueldo),2) PROMEDIO
from RECURSOS.empleado e


4._ Se necesita saber la cantidad de empleados que hay en el departamento de ventas. 
Esquemas SCOTT y RH.

SELECT count(empno)
FROM SCOTT.emp
WHERE DEPTNO ='30';

SELECT count(idempleado)
FROM RECURSOS.EMPLEADO
WHERE IDDEPARTAMENTO ='103';

5._ Se necesita saber el importe de la planilla del departamento de ventas, con comisión y 
sin comisión. Esquemas SCOTT y RH.
 
select e.*,sal TOTAL,(sal + NVL(comm,0)) TOTAL1
from scott.emp e
where deptno=30 ;

select e.*,sueldo TOTAL,(sueldo + NVL(comision,0)) TOTAL1
from RECURSOS.empleado e
where idcargo='C05' and comision is not null

6._ Del curso SQL Server Administración se necesita saber la cantidad de alumnos 
matriculados y a cuánto asciende el importe que se proyecta recaudar hasta el 
momento. Esquema EDUCA.

SELECT  SUM(MAT_PRECIO) MONTO , COUNT(*) ALUMNOS
FROM EDUCA.MATRICULA
WHERE CUR_ID=2


7._ Se necesita saber cuál es el importe recaudado hasta el momento del curso SQL 
Server Administración. Esquema EDUCA.

SELECT  SUM(PAG_IMPORTE)
FROM EDUCA.PAGO
WHERE CUR_ID=2