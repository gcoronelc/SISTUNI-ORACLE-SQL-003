2. SELECT * FROM EMPLEADO WHERE NOMBRE like '%o';
3. 
 3.1) 
 SELECT * FROM SCOTT.EMP WHERE ENAME like '_O%' OR ENAME LIKE '_A%';
 
 3.2) 
 SELECT * FROM RECURSOS.EMPLEADO WHERE APELLIDO LIKE '_a%' OR APELLIDO LIKE '_o%'
 
4. 

SELECT *
FROM RECURSOS.EMPLEADO
WHERE SUELDO BETWEEN 3000 AND 10000

5. 
5.1) 
SELECT *  FROM SCOTT.EMP WHERE DEPTNO IN (10, 20, 30);
5.2) 
SELECT * FROM RECURSOS.EMPLEADO WHERE IDDEPARTAMENTO IN (101, 106, 103);

6.
6.1)
SELECT * FROM SCOTT.EMP WHERE COMM IS NULL;
6.2)
SELECT * FROM RECURSOS.EMPLEADO WHERE comision IS NULL;