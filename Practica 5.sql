select avg(Idcliente) from CLIENTE

select sum(Idempleado) from EMPLEADO

select min(tel_casa) from TELEFONO

select max(tel_casa) from TELEFONO

select * from EMPLEADO 
select * from DIRECCION
select * from CLIENTE
select * from TELEFONO
select * from PROVEEDOR

select nombre, sum(idproveedores) 
from PROVEEDOR
group by nombre
having sum(idproveedores) > 2

select nombre, sum(idcliente)
from CLIENTE
group by nombre
having sum(idcliente) < 5

select tel_casa, sum(idtelefono)
from TELEFONO
group by tel_casa
having sum(idtelefono) < 3

select nombre, sum(idempleado)
from EMPLEADO
group by nombre
having sum(idempleado) < 2



select tel_casa, max(tel_celular)
from TELEFONO
group by tel_casa
having max(tel_celular) > 130

select TOP 2 * from DIRECCION;
select TOP 5 * from CLIENTE;
select TOP 8 * from EMPLEADO;
select TOP 3 * from TELEFONO;
select TOP 4 * from DIRECCION;
