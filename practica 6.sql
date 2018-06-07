select avg(Idcaballo) from caballo

select sum(Idtrabajador) from trabajador

select min(email) from correo

select max(email) from correo

select * from trabajador 
select * from ubicacion
select * from caballo
select * from correo
select * from persona

select nombre, sum(idpersonaes) 
from persona
group by nombre
having sum(idpersonaes) > 3

select nombre, sum(idcaballo)
from caballo
group by nombre
having sum(idcaballo) < 4

select email, sum(idcorreo)
from correo
group by email
having sum(idcorreo) < 6

select nombre, sum(idtrabajador)
from trabajador
group by nombre
having sum(idtrabajador) < 4



select email, max(telefono)
from correo
group by email
having max(telefono) > 8

select TOP 1 * from ubicacion;
select TOP 2 * from caballo;
select TOP 3 * from trabajador;
select TOP 4 * from correo;
select TOP 5 * from ubicacion;