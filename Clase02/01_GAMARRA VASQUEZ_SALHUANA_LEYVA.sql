-- Desarrollar una sentencia SELECT que permita 
-- consultar los empleados cuya penúltima letra 
-- de su nombre es E. Esquema SCOTT y HR.
SELECT * FROM SCOTT.EMP 
WHERE ENAME LIKE '%E_';

SELECT * FROM RECURSOS.EMPLEADO 
WHERE UPPER(NOMBRE) LIKE '%E_';

-- Desarrollar una sentencia SELECT que permita 
-- consultar los empleados que su nombre finaliza 
-- con la letra "O". Esquema HR.

SELECT * FROM RECURSOS.EMPLEADO 
WHERE UPPER(NOMBRE) LIKE '%O';

-- Desarrollar una sentencia SELECT que permita 
-- consultar los empleados que su apellido tiene 
-- en la segunda posición la letra "A" o la letra "O". 
-- Esquemas SCOTT y HR.
/*3*/

SELECT *FROM scott.emp
where ename like '_A%' OR ename like '_O%';


SELECT *FROM recursos.empleado
where upper(APELLIDO) like '_A%' OR upper(APELLIDO) LIKE '_O%';

-- Desarrollar una sentencia SELECT que permita 
-- averiguar que empleados tienen un sueldo 
-- mayor de 3,000.0 y menor de 10,000.0. 
-- Esquemas SCOTT y HR.

SELECT * FROM SCOTT.EMP 
WHERE SAL BETWEEN 3000 AND 10000;

SELECT * FROM RECURSOS.EMPLEADO 
WHERE SUELDO BETWEEN 3000 AND 10000;

-- Desarrollar una sentencia SELECT que permita 
-- averiguar quiénes son los empleados de los 
-- departamentos de contabilidad, recursos humanos y ventas. 
-- Esquemas SCOTT y HR.

SELECT * FROM RECURSOS.EMPLEADO 
WHERE IDDEPARTAMENTO IN ('101','103','106')

-- Consultar los empleados del departamento de 
-- ventas que no tienen comisión. 
-- Esquemas SCOTT y HR.

SELECT * FROM RECURSOS.EMPLEADO 
WHERE COMISION IS NULL