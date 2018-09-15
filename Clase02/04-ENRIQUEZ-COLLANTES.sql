15. Desarrolle una sentencia SELECT para encontrar 
los departamentos que tienen a lo 
más de 3 trabajadores. 
Esquemas SCOTT y HR. 

select 
  d.dname,count(*) as Empleados,
  sum(sal) as Planilla,
  round(AVG(sal) ,2) as SueldoPromedio
from SCOTT.emp e 
inner join SCOTT.dept d on e.deptno=d.deptno
group by d.dname
having count(*) <= 3
union
select 
  d.nombre,
  count(*) as Empleados,
  Sum(sueldo)as Planilla,
  round(AVG(sueldo) ,2) as SueldoPromedio 
from recursos.empleado e 
inner join recursos.departamento d on e.iddepartamento=d.iddepartamento
having count(*) <= 3
group by d.nombre;

16. Se necesita saber cuáles son los puestos de trabajo 
que tienen más de 2 empleados. 
Esquemas SCOTT y HR 

SELECT job, count(*)
FROM SCOTT.emp
GROUP BY JOB
HAVING count(*)>2;

SELECT idcargo, count(*)
FROM RECURSOS.empleado
GROUP BY idcargo
HAVING count(*)>2;

17. Se necesita saber que empleados han registrado 
menor de 5 movimientos. Esquema 
EUREKA

select e.vch_emplnombre,count(*)
from EUREKA.movimiento m 
inner join EUREKA.empleado e on m.chr_emplcodigo=e.chr_emplcodigo
group by e.vch_emplnombre
having count(*) < 5;