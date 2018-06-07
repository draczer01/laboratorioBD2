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

CREATE FUNCTION Comprado(@id_caballo numeric(18, 0))
RETURNS @persona TABLE
(
id_persona numeric(18, 0), nombre VARCHAR(50),direccion VARCHAR(50) ,id_caballo numeric(18, 0)
)
AS
BEGIN
INSERT @persona SELECT id_persona,nombre,direccion,id_caballo FROM persona
WHERE id_caballo=@id_caballo
RETURN
END
go

CREATE FUNCTION quesoso(@id_cempleado numeric(18, 0))
RETURNS @establo TABLE
(
id_establo numeric(18, 0), espacio VARCHAR(50),ubicacion VARCHAR(50) ,id_empleado numeric(18, 0)
)
AS
BEGIN
INSERT @establo SELECT id_establo,espacio,ubicacion,id_empleado FROM establo
WHERE id_empleado=@id_cempleado
RETURN
END
go
