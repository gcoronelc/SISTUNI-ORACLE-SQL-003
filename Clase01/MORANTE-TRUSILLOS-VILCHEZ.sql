-- 3 --desarrollar una sentencia SELECT para consultar los empleados de contabilidad cuyo sueldo e mayor a 10,000.00. Esquema HR.

select e.*
from recursos.empleado e
where e.iddepartamento = (select d.iddepartamento from recursos.departamento d where d.nombre = 'Contabilidad') and e.sueldo > 10000.00 

--2
SELECT * FROM RECURSOS.EMPLEADO  WHERE  SUELDO>=3500.00 AND SUELDO<=10000.00;
--4
SELECT *  FROM RECURSOS.EMPLEADO  WHERE  UPPER(SUBSTR(NOMBRE,2,1))='A' OR   UPPER(SUBSTR(NOMBRE,2,1))='O';
SELECT *  FROM SCOTT.EMP  WHERE  UPPER(SUBSTR(ENAME,2,1))='A' OR   UPPER(SUBSTR(ENAME,2,1))='O';
