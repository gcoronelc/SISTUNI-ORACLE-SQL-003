1.Desarrollar una sentencia SELECT para consultar los empleados 
del departamento de contabilidad. Esquemas SCOTT y HR.

select * from scott.emp e where e.deptno = 10;

select * from recursos.empleado r where r.idDepartamento = 101;

2.Desarrolle una sentencia SELECT para consultar 
los cursos que no tienen alumnos matriculados. 
Esquema EDUCA.

SELECT * FROM EDUCA.CURSO WHERE cur_matriculados=0;

3.Desarrollar una sentencia SELECT para consultar 
los productos que su precio en mayor a 50 Soles. 
Esquema VENTAS.

SELECT * FROM VENTAS.PRODUCTO WHERE Precio>50;

4.Desarrollar una sentencia SELECT para consultar 
los empleados que su salario en mayor a 3000.00. 
Esquema HR.

   select APELLIDO ||' ' ||NOMBRE  EMPLEADO ,SUELDO  
   from RECURSOS.EMPLEADO where sueldo > 3000;

5.Desarrollar una sentencia SELECT para consultar 
las cuentas en SOLES. 
Esquema EUREKA.

  select  chr_cuencodigo  cuenta from eureka.cuenta 
  where chr_monecodigo = '01';
  
