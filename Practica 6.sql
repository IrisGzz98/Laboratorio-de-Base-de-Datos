use [Punto de venta]

create view 
datos_cliente
as select idcliente, idtelefono, nombre, RFC, iddireccion, correo
from CLIENTE; 
select * from datos_cliente

create view
datos_direccion
as select iddireccion, estado, ciudad, municipio 
from DIRECCION;
select * from datos_direccion

create view 
datos_empleado
as select idempleado, nombre
from EMPLEADO;
select * from datos_empleado

create view 
datos_proveedor
as select idproveedores, nombre
from PROVEEDOR;
select * from datos_proveedor

create view 
datos_telefonos
as select idtelefono, tel_casa, tel_celular
from TELEFONO;
select * from datos_telefonos


select CLIENTE.Idcliente, DIRECCION.estado
from CLIENTE 
inner join DIRECCION on CLIENTE.Iddireccion = DIRECCION.Iddireccion;

select EMPLEADO.nombre, TELEFONO.tel_casa
from EMPLEADO
left join TELEFONO on EMPLEADO.Idempleado = TELEFONO.Idtelefono
order by EMPLEADO.nombre;

select PROVEEDOR.nombre, EMPLEADO.nombre
from PROVEEDOR
right join EMPLEADO on PROVEEDOR.Idproveedores = EMPLEADO.Idempleado
order by PROVEEDOR.nombre 

select * from CLIENTE
left join EMPLEADO on CLIENTE.Idcliente = EMPLEADO.Idempleado
union 
select * from CLIENTE
right join EMPLEADO on CLIENTE.Idcliente = EMPLEADO.Idempleado

select PROVEEDOR.Idproveedores, PROVEEDOR.nombre
from PROVEEDOR
cross join DIRECCION;

