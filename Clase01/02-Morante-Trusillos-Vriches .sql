1.Desarrollar una sentencia SELECT que permita obtener la cantidad y porcentaje de matriculados por cada curso. Esquema EDUCA.

-- corregir
SELECT CUR_ID, round(COUNT(1) *100/(SELECT COUNT(1) 
FROM EDUCA.MATRICULA),2 ) porcentaje, COUNT(1)   cantidad 
FROM EDUCA.MATRICULA GROUP BY CUR_ID;


2.Desarrollar una sentencia SELECT para consultar el 
nombre y apellido de un empleado en una sola columna. Base de datos HR.

SELECT NOMBRE ||' '||APELLIDO NOMBRE_COMPLETO FROM RECURSOS.EMPLEADO;

3.Desarrollar una sentencia SELECT que permita obtener el 
importe que se obtendr�a si se logra vender todas las vacantes por cada curso. 
Base de datos EDUCA.


SELECT  SUM(CUR_PRECIO*CUR_VACANTES) VENTA_TOTAL  FROM EDUCA.CURSO;

4.Desarrolle una sentencia SELECT que permita obtener el importe que se obtendr�a por cada producto si se venden todas las unidades que hay en stock. Esquema VENTAS.

SELECT   NOMBRE PRODUCTO , (PRECIO*STOCK) IMPORTE FROM VENTAS.PRODUCTO;

5. Desarrollar una sentencia SELECT que permita consultar el salario, y el salario proyectado con un aumento del 15% de cada empleado. Esquema HR.

select idempleado,sueldo, sueldo*1.15 salario_proyectado
from recursos.empleado;