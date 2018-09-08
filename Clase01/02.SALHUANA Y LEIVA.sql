SALHUANA
LEIVA


SELECT cur_id,cur_matriculados || '' || (cur_matriculados*100 )/cur_vacantes
FROM EDUCA.curso;

SELECT cur_id,cur_precio*cur_vacantes 
FROM EDUCA.curso;

SELECT  PRECIO*STOCK 
FROM VENTAS.producto;

SELECT sueldo,(SUELDO*0.15)+ SUELDO
FROM RECURSOS.empleado


SELECT nombre || ' ' ||  APELLIDO
FROM RECURSOS.empleado
