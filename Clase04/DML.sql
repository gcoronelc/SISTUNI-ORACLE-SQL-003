-- INSERT
-- Dos estados.

INSERT INTO SCOTT.EMP(EMPNO, ENAME, SAL)
VALUES(7777,'G. CORONEL',99999.99);

SELECT * FROM SCOTT.EMP 
ORDER BY 1 DESC;


-- UPDATE / DELETE

-- Caso: Actualizar datos del empleado 7777

-- Error
UPDATE SCOTT.EMP
SET ENAME = 'GUSTAVO CORONEL'
WHERE EMPNO = 7777;

-- Ejecución incorrecta
UPDATE SCOTT.EMP
SET ENAME = 'GUSTAVO C.'
WHERE EMPNO = 7771;

-- Ejecución correcta
UPDATE SCOTT.EMP
SET ENAME = 'GUSTAVO C.'
WHERE EMPNO = 7777;

SELECT * FROM SCOTT.EMP 
ORDER BY 1 DESC;


