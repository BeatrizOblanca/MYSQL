-- PRÁCTICA 3
USE HOSPITAL;
-- A) ESCRIBIR LAS SENTENCIAS EN SQL QUE IMPLEMENTEN LO SIGUIENTE
-- APARTADO 1
use hospital;
select medicamentos.nombre, visitas.fecha from medicamentos inner join prescripciones on (medicamentos.id = prescripciones.medicamento) inner join visitas on (prescripciones.visita = visitas.id);
-- APARTADO 2
select pacientes.nombre, medicos.nombre, visitas.fecha from pacientes inner join visitas on (pacientes.id = visitas.paciente) inner join medicos on (medicos.id = visitas.medico);
-- APARTADO 3
select distinct medicos.nombre, medicamentos.nombre from medicos inner join visitas on (medicos.id = visitas.medico) inner join prescripciones on (visitas.id = prescripciones.visita) inner join medicamentos on (prescripciones.medicamento = medicamentos.id) where visitas.fecha >'2021-03-01';
-- APARTADO 4
select nombre from medicos
union 
select nombre from pacientes;
-- APARTADO 5 (no me da ningún nombre, y no entiendo porque, porque si me da el nombre de los jefes de departamento si pongo in)
select nombre from medicos where id not in (select responsable from departamentos);
-- APARTADO 6

-- APARTADO 7
insert into pacientes (nombre, telefono, documento, email, nacimiento) values
('bea2','659487939','35949584k', 'beatriz@gmail.com', '1992-11-13');
-- APARTADO 8
update pacientes set telefono = '654321098' where documento= '35949584k';
-- APARTADO 9
delete from pacientes where documento = '35949584k';
