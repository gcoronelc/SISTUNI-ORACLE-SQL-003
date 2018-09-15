--=========OPERADORES LIKE, BETWEEN, IN, IS NULL

1.- 

/* 1.Desarrollar una sentencia SELECT que permita consultar los empleados cuya penúltima letra de su nombre es E. 
Esquema SCOTT y HR.*/

SELECT * FROM scott.emp
WHERE ename LIKE '%E_';

SELECT * FROM recursos.empleado
WHERE upper(nombre) LIKE '%E_';

/* 2.Desarrollar una sentencia SELECT que permita consultar los empleados que su nombre finaliza con la letra "O". 
Esquema HR.*/

SELECT * FROM recursos.empleado
WHERE nombre LIKE '%_O';

/* 3.Desarrollar una sentencia SELECT que permita consultar los empleados que su apellido tiene en la segunda posición la letra "A" 
o la letra "O". Esquemas SCOTT y HR.*/

SELECT * FROM SCOTT.emp
WHERE upper(ename) LIKE '_A%' or upper(ename) LIKE '_O%';

SELECT * FROM RECURSOS.empleado
WHERE upper(NOMBRE) LIKE '_A%' or upper(NOMBRE) LIKE '_O%';

/*4. Desarrollar una sentencia SELECT que permita averiguar que empleados tienen un sueldo mayor de 3,000.0 y
 menor de 10,000.0. Esquemas SCOTT y HR.*/
 
SELECT * FROM scott.emp
WHERE SAL BETWEEN 3000 AND 10000;

SELECT * FROM recursos.empleado
WHERE SUELDO BETWEEN 3000 AND 10000;

 
/* 5.Desarrollar una sentencia SELECT que permita averiguar quiénes son los empleados de los departamentos de contabilidad, recursos humanos y ventas. Esquemas SCOTT y HR.
28. Consultar los empleados del departamento de ventas que no tienen comisión. 
Esquemas SCOTT y HR.*/

select *
from SCOTT.emp
where (deptno='30' or deptno='10');

select *
from RECURSOS.empleado
where idcargo='C05';

/* 6.Consultar los empleados del departamento de ventas que no tienen comisión. Esquemas SCOTT y HR*/

SELECT * FROM scott.emp
WHERE DEPTNO='30'AND COMM IS NOT NULL;

SELECT * FROM recursos.empleado
WHERE IDDEPARTAMENTO='103' AND COMISION IS NOT NULL;