-- APARTADO 1 Y 2
Select * from hospital.medicos
order by nombre asc;
-- APARTADO 3
select * from hospital.medicamentos where facturable = 0;
-- APARTADO 4
select informe from hospital.visitas
order by fecha desc
LIMIT 5;
-- APARTADO 5
select * from hospital.departamentos where responsable is null;
-- APARTADO 6
SELECT count(nombre) from hospital.medicos;
-- APARTADO 7
select max(codigo) from hospital.medicamentos;
select min(codigo) from hospital.medicamentos;
-- APARTADO 8
select count(id) from hospital.medicos
group by departamento;
-- APARTADO 9
select count(distinct medico) from hospital.visitas
where fecha >('2021-09-01');
-- APARTADO 10 (creo que está bien, pero no sale ninguno repetido)
select email from hospital.pacientes
group by email
having count(id)>=2;
-- APARTADO 11
select fecha, count(id) from hospital.visitas
group by fecha
having count(id)>=5;
-- APRATADO 12
select fecha, count(id) from hospital.visitas
where fecha>('2021-01-01')
group by fecha
having count(id)>=5;
-- APARTADO 13.   ESTA MAL
select medico,fecha from hospital.visitas
where fecha>('2021-06-15')
group by medico
having count(id);
-- APARTADO 14
select nombre, email from hospital.pacientes where not exists
	(select paciente from hospital.visitas where hospital.pacientes.id = hospital.visitas.paciente);
-- APARTADO 15
USE HOSPITAL;
select departamentos.nombre, medicos.nombre from departamentos, medicos where departamentos.responsable = medicos.id;
-- APARTADO 16
select nombre from medicos where documento in (select documento from pacientes);
-- APARTADO 17
select pacientes.nombre, visitas.fecha from pacientes left join visitas on pacientes.id = visitas.paciente;
-- APARTADO 18
use hospital;
select pacientes.nombre, count(visitas.fecha) from pacientes left join visitas on pacientes.id = visitas.paciente group by pacientes.nombre;
-- APARTADO 19
use hospital;
select distinct medicamentos.nombre, medicos.nombre from medicamentos inner join prescripciones on (medicamentos.id=prescripciones.medicamento) 
inner join visitas on (prescripciones.visita = visitas.id) inner join medicos on (visitas.medico = medicos.id) 
order by medicos.nombre;