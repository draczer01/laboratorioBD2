use [practica 3]
go
create procedure 
SP_PERSONA
as select * from persona;
go
create procedure 
SP_EMPLEADOS
as select * from empleados;
go
create procedure 
SP_ESTABLO
as select * from establo;
go
create procedure 
SP_CABALLO 
as select * from caballo;
go
create procedure 
SP_QUESOS
as select * from quesos;

go
create trigger 
TR_persona 
on persona
instead of insert 
as 
print 'hubo un cambio'
go

create trigger 
TR_caballo
on caballo
after insert 
as 
print 'hubo un cambio'
go


