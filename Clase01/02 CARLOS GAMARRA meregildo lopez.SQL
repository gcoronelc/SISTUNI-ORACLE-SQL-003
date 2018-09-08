Desarrollar una sentencia SELECT para consultar el 
nombre y apellido de un empleado en una sola columna. 
Base de datos HR.

select e.nombre || ' ' || e.apellido 
from recursos.empleado e;

--Desarrolle una sentencia SELECT para consultar el 
nombre, vacantes y precio de cada curso. 
Esquema EDUCA.

select c.cur_nombre,c.cur_vacantes,c.cur_precio 
from EDUCA.curso C;

-
Select  cur_id Codigo, cur_nombre curso, 
cur_vacantes,
cur_matriculados Maticulados, 
(cur_matriculados/cur_vacantes)*100 Porcentaje from educa.curso


- 

Select  cur_vacantes*cur_precio PrecioTotal  from educa.curso

-- Select  nombre , precio*stock venta from ventas.Producto

select e.*, (e.sueldo +(e.sueldo * 0.15)) from recursos.empleado e;

