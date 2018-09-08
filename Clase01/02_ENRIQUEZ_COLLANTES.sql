1._Desarrollar una sentencia SELECT que permita obtener la cantidad y porcentaje de matriculados por cada curso. 
Esquema EDUCA.

select cur_id,count(*) as Cantidad,round ((100*count(*) / (select count(*) from EDUCA.matricula)),2) porcentaje
from  EDUCA.matricula
group by cur_id;

2._Desarrollar una sentencia SELECT para consultar el nombre y apellido de un empleado en una sola columna. 
Base de datos HR.

select nombre || ' ' || apellido 
from  RECURSOS.empleado;

3._Desarrollar una sentencia SELECT que permita obtener el importe que se obtendría
 si se logra vender todas las vacantes por cada curso. Base de datos EDUCA.

select idprod, nombre, (precio*stock) as Porcentaje
from  VENTAS.producto;


4._Desarrolle una sentencia SELECT que permita obtener el importe que se obtendría por cada producto
 si se venden todas las unidades que hay en stock. Esquema VENTAS.

select idprod, nombre, (precio*stock) as Porcentaje
from  VENTAS.producto;

SELECT CUR_ID,CUR_NOMBRE,(CUR_VACANTES*CUR_PRECIO) AS MONTO
from  EDUCA.CURSO


5._Desarrollar una sentencia SELECT que permita consultar el salario, y el salario proyectado con un aumento del 15% de cada empleado. Esquema HR.

select nombre || ' ' || apellido , sueldo,Round(sueldo*0.15) Aumento
from  RECURSOS.empleado;