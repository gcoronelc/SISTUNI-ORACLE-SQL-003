--Desarrollar una sentencia SELECT para consultar los empleados del departamento de contabilidad. Esquemas SCOTT y HR.
select * from RECURSOS.EMPLEADO WHERE IDDEPARTAMENTO='101';

--Desarrolle una sentencia SELECT para consultar los cursos que no tienen alumnos matriculados. Esquema EDUCA.
SELECT * FROM EDUCA.CURSO WHERE CUR_MATRICULADOS= '0';

--Desarrollar una sentencia SELECT para consultar los productos que su precio en mayor a 50 Soles. Esquema VENTAS.
select * from ventas.producto p where p.precio > 50;

--Desarrollar una sentencia SELECT para consultar los empleados que su salario en mayor a 3000.00. Esquema HR.
select * from recursos.empleado where sueldo >'3000';

--Desarrollar una sentencia SELECT para consultar las cuentas en SOLES. Esquema EUREKA.
select*from eureka.cuenta
where chr_monecodigo = 1

