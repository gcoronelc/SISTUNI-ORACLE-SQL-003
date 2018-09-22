-- ====================================
-- OPERADOR JOIN
-- ====================================

/*
Ejemplo 01
Consultar los empleados con sus respectivos
nombre de su puesto de trabajo y el
nombre del departamento donde laboran.
Esquema: RECURSOS
*/

SELECT COUNT(*) FROM RECURSOS.EMPLEADO;

SELECT 
  EM.IDEMPLEADO, EM.APELLIDO, EM.NOMBRE,
  CA.NOMBRE CARGO, DE.NOMBRE DEPARTAMENTO
FROM RECURSOS.CARGO CA
JOIN RECURSOS.EMPLEADO EM USING (IDCARGO)
JOIN RECURSOS.DEPARTAMENTO DE USING (IDDEPARTAMENTO);

/*
Ejercicio 1
Desarrollar una consulta para obtener los siguiemtes
datos de las cuentas ahorro:
- Número de cuenta
- Saldo
- Nombre del cliente
- Nombre de la sucursal
- Nombre del empleado que creo la cuenta
- Nombre de la moneda
Esquema EUREKA
*/


/*
Ejemplo 02
Consultar los empleados con sus respectivos
nombre de su puesto de trabajo y el
nombre del departamento donde laboran.
Esquema: RECURSOS
*/

SELECT COUNT(*) FROM RECURSOS.EMPLEADO;

SELECT 
  EM.IDEMPLEADO, EM.APELLIDO, EM.NOMBRE,
  CA.NOMBRE CARGO, DE.NOMBRE DEPARTAMENTO
FROM RECURSOS.CARGO CA
JOIN RECURSOS.EMPLEADO EM 
ON CA.IDCARGO = EM.IDCARGO
JOIN RECURSOS.DEPARTAMENTO DE 
ON EM.IDDEPARTAMENTO = DE.IDDEPARTAMENTO;

/*
Ejemplo 03
Cuantos empleados hay por departamento.
*/

SELECT 
  DE.NOMBRE DEPARTAMENTO,
  count(*) EMPLEADOS
FROM RECURSOS.EMPLEADO EM 
JOIN RECURSOS.DEPARTAMENTO DE 
ON EM.IDDEPARTAMENTO = DE.IDDEPARTAMENTO
GROUP BY DE.NOMBRE;


/*
Ejemplo 04
Se necesita saber cuantos trabajadores existen por
departamento. El resultado debe considerar a
todos los departamentos.
*/

SELECT 
  DE.NOMBRE DEPARTAMENTO,
  COUNT(EM.IDDEPARTAMENTO) EMPLEADOS
FROM RECURSOS.EMPLEADO EM 
RIGHT JOIN RECURSOS.DEPARTAMENTO DE 
ON EM.IDDEPARTAMENTO = DE.IDDEPARTAMENTO
GROUP BY DE.NOMBRE;


SELECT 
  DE.NOMBRE DEPARTAMENTO,
  SUM(NVL2(EM.IDDEPARTAMENTO,1,0)) EMPLEADOS
FROM RECURSOS.EMPLEADO EM 
RIGHT JOIN RECURSOS.DEPARTAMENTO DE 
ON EM.IDDEPARTAMENTO = DE.IDDEPARTAMENTO
GROUP BY DE.NOMBRE;


/*
EJERCICIO 2
Del esquema EDUCA se necesita un reporte 
recumen de las matriculas y pagos de los alumnos.
Las columnas del reporte que se deben considerar
son:
- codigo del curso.
- nombre del curso.
- cantidad de matriculados.
- importe comprometido a pagar por los alumnos (COMPROMISO)
- importe pago por los alumnos (RECAUDACION)

COD-CUR   NOMBRE    ALUMNOS   COMPROMISO   RECAUDACION
------------------------------------------------------------------
C001      Aaaaaa      4        6578.89
C002      Bbbbbb      5
C003  
*/




