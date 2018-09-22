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
*/






