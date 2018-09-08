1.Desarrollar una sentencia SELECT para consultar los empleados del departamento de contabilidad. Esquemas SCOTT y HR.

SELECT * FROM SCOTT.EMP WHERE JOB='MANAGER';

SELECT E.*,D.NOMBRE DEP 
FROM RECURSOS.EMPLEADO E 
INNER JOIN RECURSOS.DEPARTAMENTO D ON E.IDDEPARTAMENTO=D.IDDEPARTAMENTO 
WHERE D. IDDEPARTAMENTO=101;



2. 

Desarrolle una sentencia SELECT para consultar los cursos que no tienen alumnos matriculados. Esquema EDUCA.
select *
from educa.curso
where cur_matriculados = 0;

3. Desarrollar una sentencia SELECT para consultar los productos que su precio en mayor a 50 Soles. Esquema VENTAS.
select *
from ventas.producto
where precio > 50;


4.
Desarrollar una sentencia SELECT para consultar los empleados que su salario en mayor a 3000.00. Esquema HR.
select *
from recursos.empleado
where sueldo > 3000.00;

5. Desarrollar una sentencia SELECT para consultar las cuentas en SOLES. Esquema EUREKA.

select *
from eureka.cuenta
where chr_monecodigo = (select m.chr_monecodigo from eureka.moneda m where m.vch_monedescripcion = 'Soles');

--or

select *
from eureka.cuenta c inner join eureka.moneda m on c.chr_monecodigo = m.chr_monecodigo
where m.vch_monedescripcion = 'Soles';


