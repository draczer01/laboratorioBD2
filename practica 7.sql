use [caballos]

create view 
datos_persona
as select idpersona, nombre, correo, direccion
from persona; 
select * from datos_persona

create view
datos_ubicacion
as select idubicacion, estado, ciudad
from ubicacion;
select * from datos_direccion

create view 
datos_trabajador
as select idtrabajador, nombre, salario,idestablo
from trabajador;
select * from datos_trabajador

create view 
datos_establo
as select idestablo, ubicacion
from establo;
select * from datos_establo

create view 
datos_caballo
as select caballo, velocidad, nombre, raza
from caballo;
select * from datos_telefonos


select persona.Idpersona, ubicacion.estado
from persona 
inner join ubicacion on persona.direccion = ubicacion.Idubicacion;

select trabajador.nombre, establo.idestablo
from trabajador
left join idestablo on trabajador.Idtrabajador = establo.Idestablo
order by trabajador.nombre;

select establo.nombre, trabajador.nombre
from establo
right join trabajador on establo.Idestablo = trabajador.Idtrabajador
order by establo.nombre 

select * from persona
left join trabajador on persona.Idpersona = trabajador.Idtrabajador
union 
select * from persona
right join trabajador on persona.Idpersona = trabajador.Idtrabajador

select establo.Idestablo, establo.nombre
from establo
cross join ubicacion;