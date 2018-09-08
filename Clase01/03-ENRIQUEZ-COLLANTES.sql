1._ Desarrollar una sentencia SELECT para consultar los empleados del departamento de contabilidad. 
Esquemas SCOTT y HR.


2._Desarrolle una sentencia SELECT para consultar los cursos que no tienen alumnos matriculados. 
Esquema EDUCA.

select * from EDUCA.CURSO
WHERE CUR_MATRICULADOS = '0';


3._ Desarrollar una sentencia SELECT para consultar los productos que su precio en mayor a 50 Soles. 
Esquema VENTAS.

select * from VENTAS.PRODUCTO
WHERE PRECIO > '50';

4._Desarrollar una sentencia SELECT para consultar los empleados que su salario en mayor a 3000.00. 
Esquema HR.

select * from RECURSOS.EMPLEADO
WHERE SUELDO > '3000';

5._Desarrollar una sentencia SELECT para consultar las cuentas en SOLES. 
Esquema EUREKA.

select * from EUREKA.CUENTA
WHERE CHR_MONECODIGO = '01';