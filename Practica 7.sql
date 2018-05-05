use [Punto de venta]

create procedure 
SP_CLIENTE 
as select * from CLIENTE;

create procedure 
SP_DIRECCION
as select * from DIRECCION;

create procedure 
SP_EMPLEADO
as select * from EMPLEADO;

create procedure 
SP_PROVEEDOR 
as select * from PROVEEDOR;

create procedure 
SP_TELEFONO
as select * from TELEFONO;


create trigger 
TR_cliente 
on CLIENTE
for insert 
as 
print 'hubo un cambio'



