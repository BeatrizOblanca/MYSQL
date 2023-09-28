-- APARTADO 1 Y 2
Select * from hospital.medicos
order by nombre desc
-- APARTADO 3
select * from hospital.medicamentos where facturable = 0
-- APARTADO 4
select *from hospital.visitas
order by fecha desc
LIMIT 5
-- APARTADO 5
select * from hospital.departamentos where responsable is null
-- APARTADO 6
SELECT count(nombre) from hospital.medicos
-- APARTADO 7
select max(codigo) from hospital.medicamentos;
select min(codigo) from hospital.medicamentos;
-- APARTADO 8
