-- ==========================================
-- Operadores LIKE, BETWEEN, IN, IS NULL
-- ==========================================

/*

COLUMNA [NOT] LIKE 'patron'

Comodines:

_ Representa un caracter
% Representa una cadena

Ejemplo:

1.- '_A_C%'	
2.- '%O'
3.- '%C_'

*/

/*
Ejercicio 1
Desarrollar una sentencia SELECT que permita 
consultar los empleados cuya penúltima letra 
de su nombre es E. 
Esquema SCOTT y HR.
*/

SELECT * FROM scott.emp
WHERE ename LIKE '%E_';

SELECT * FROM recursos.empleado
WHERE upper(nombre) LIKE '%E_';


/*
Sintaxis:

columna [NOT] BETWEEN valor1 AND valor2

edad BETWEEN 10 AND 20

- edad es mayor o igual que 10
- edad es menor o igual que 20

*/

SELECT * FROM recursos.empleado
WHERE sueldo BETWEEN 7000 AND 15000;


/*

Sintaxis:

columna [NOT] IN ( conjunto de valores )

edad IN ( 20, 25, 30 )

*/


SELECT * FROM recursos.empleado
WHERE iddepartamento IN (100, 102);


/*

Sintaxis:

columna IS [NOT] NULL

comision IS NULL

*/


SELECT * FROM recursos.empleado
WHERE COMISION IS NOT NULL;


-- ============================================
-- ORDENAMIENTO DEL CONJUNTO DE RESULTADOS
-- ============================================

/*
Sintaxis:

ORDER BY nro-col|columna [ASC|DESC] [, ... ]


*/

SELECT iddepartamento, idcargo, nombre
FROM recursos.empleado
ORDER BY 1, 3 desc;


-- ====================================
-- MANIPULACIÓN DE VALORES NULOS
-- ====================================

/*

Cualquier operación con un valor NULL
el resultado es otro valor NULL.

*/


SELECT 30 + NULL FROM DUAL;

/*

OPCIONES:

1.- Operador IS NULL
2.- Función NVL
3.- Funcion NVL2
4.- Función COALESCE


*/

SELECT NVL(null,20) FROM DUAL;

SELECT e.*, sueldo + nvl(comision,0) total 
FROM recursos.empleado e;

SELECT e.*, sueldo + nvl2(comision,comision*0.50,0) total 
FROM recursos.empleado e;


SELECT e.*, sueldo + COALESCE(comision,0) total 
FROM recursos.empleado e;

/*
FUNCIONES DE FECHA Y HORA
*/

/*

Funciones:

- TO_DATE: Convertir una cadena a Date
- TO_CHAR: Convertir un Date a cadena

*/


INSERT INTO "SCOTT"."EMP" (EMPNO, ENAME, JOB, 
HIREDATE, SAL, DEPTNO) 
VALUES ('6666', 'GUSTAVO', 'MANAGER', 
TO_DATE('15/01/2018', 'DD-MM-YYYY'), 
'9999', '10');

COMMIT;

SELECT * FROM SCOTT.EMP;

SELECT TO_CHAR(HIREDATE,'DD-MM-YYYY') FECHA FROM SCOTT.EMP;










