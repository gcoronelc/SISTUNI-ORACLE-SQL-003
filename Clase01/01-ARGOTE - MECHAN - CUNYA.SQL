1) Desarrolle una sentencia SELECT para consultar 
el id, nombre, apellido y email de todos los empleados. 
Esquemas SCOTT y HR.
1.1) 
select empno id, ename nombre from scott.emp;
1.2) 
select idempleado id, nombre, apellido, email 
from recursos.empleado;

2) Desarrolle una sentencia SELECT para consultar el 
id, nombre, direcci�n y email de todos los alumnos. 
Esquema EDUCA.
2.1)
SELECT alu_id, alu_nombre, alu_direccion, alu_email FROM EDUCA.ALUMNO;


3) Desarrolle una sentencia SELECT para consultar 
el id, nombre, precio y profesor de cada curso. 
Esquema EDUCA.
3.1) 
SELECT cur_id, cur_nombre, cur_precio, cur_profesor FROM EDUCA.CURSO;


4) Desarrolle una sentencia SELECT para consultar el 
id y nombre de todos los departamentos. 
Esquemas SCOTT y HR.
select deptno,dname from SCOTT.dept
select iddepartamento,nombre  from RECURSOS.departamento


5) Desarrolle una sentencia SELECT para consultar el 
nombre, vacantes y precio de cada curso. Esquema EDUCA.
5.1)
SELECT cur_nombre, cur_vacantes, cur_precio FROM EDUCA.CURSO;



