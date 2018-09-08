1.- Desarrollar una sentencia SELECT que permita obtener 
la cantidad y porcentaje de matriculados por cada curso. 
Esquema EDUCA.

-- corregir
SELECT m.cur_id,COUNT(m.cur_id) matriculados, 
trunc(((COUNT(m.cur_id)/(SELECT COUNT(*) FROM EDUCA.MATRICULA)))*100,2) total
FROM EDUCA.MATRICULA m
GROUP BY m.cur_id;

select * from educa.curso;




2.- Desarrollar una sentencia SELECT para consultar el 
nombre y apellido de un empleado en una sola columna. 
Base de datos HR.

select APELLIDO ||' ' ||NOMBRE  EMPLEADO from RECURSOS.EMPLEADO;

3.- Desarrollar una sentencia SELECT que permita obtener el 
importe que se obtendr�a si se logra vender todas las vacantes 
por cada curso. Base de datos EDUCA.

-- corregir
SELECT SUM(PAG_IMPORTE) IMPORTE FROM EDUCA.PAGO;

4.- Desarrolle una sentencia SELECT que permita obtener 
el importe que se obtendr�a por cada producto si se 
venden todas las unidades que hay en stock. Esquema VENTAS.
4.1) 
select idprod, nombre, (precio*stock) precio from ventas.producto;

5.- Desarrollar una sentencia SELECT que permita consultar 
el salario, y el salario proyectado con un aumento del 15% de 
cada empleado. Esquema HR.

5.1) 
select APELLIDO ||' ' ||NOMBRE  EMPLEADO ,
SUELDO+NVL(COMISION,0) SALARIO, (SUELDO+NVL(COMISION,0))*.15  PROYECTADO 
from RECURSOS.EMPLEADO;



