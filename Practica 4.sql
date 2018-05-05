USE [Punto de venta];

INSERT INTO TELEFONO

(Idtelefono, tel_casa, tel_celular)

VALUES ('1', '83144707', '123');

INSERT INTO TELEFONO

(Idtelefono, tel_casa, tel_celular)

VALUES ('2', '83144598', '124');

INSERT INTO TELEFONO

(Idtelefono, tel_casa, tel_celular)

VALUES ('3', '83148798', '125');

INSERT INTO TELEFONO

(Idtelefono, tel_casa, tel_celular)

VALUES ('4', '83176532', '126');

INSERT INTO TELEFONO

(Idtelefono, tel_casa, tel_celular)

VALUES ('5', '83142356', '127');

INSERT INTO TELEFONO

(Idtelefono, tel_casa, tel_celular)

VALUES ('6', '83149821', '128');

INSERT INTO TELEFONO

(Idtelefono, tel_casa, tel_celular)

VALUES ('7', '8315612', '129');

INSERT INTO TELEFONO

(Idtelefono, tel_casa, tel_celular)

VALUES ('8', '83149165', '131');

INSERT INTO TELEFONO

(Idtelefono, tel_casa, tel_celular)

VALUES ('9', '83653212', '132');

INSERT INTO TELEFONO

(Idtelefono, tel_casa, tel_celular)

VALUES ('10', '8313265', '133');


INSERT INTO DIRECCION

(Iddireccion, estado, ciudad, municipio)

VALUES ('1', 'Nuevo Leon', 'Monterrey', 'Apodaca');

INSERT INTO DIRECCION

(Iddireccion, estado, ciudad, municipio)

VALUES ('2', 'Baja California', 'Tijuana', 'Tijuana');

INSERT INTO DIRECCION

(Iddireccion, estado, ciudad, municipio)

VALUES ('3', 'Guanajuato', 'Leon', 'Leon');

INSERT INTO DIRECCION

(Iddireccion, estado, ciudad, municipio)

VALUES ('4', 'Jalisco', 'Guadalajara', 'Jalisco');

INSERT INTO DIRECCION

(Iddireccion, estado, ciudad, municipio)

VALUES ('5', 'Nuevo Leon', 'Monterrey', 'Apodaca');

INSERT INTO DIRECCION

(Iddireccion, estado, ciudad, municipio)

VALUES ('6', 'Chihuahua', 'Juarez', 'Juarez');

INSERT INTO DIRECCION

(Iddireccion, estado, ciudad, municipio)

VALUES ('7', 'Guanajuato', 'Leon', 'Leon');

INSERT INTO DIRECCION

(Iddireccion, estado, ciudad, municipio)

VALUES ('8', 'Nuevo Leon', 'Monterrey', 'Apodaca');

INSERT INTO DIRECCION

(Iddireccion, estado, ciudad, municipio)

VALUES ('9', 'Jalisco', 'Zapopan', 'Zapopan');

INSERT INTO DIRECCION

(Iddireccion, estado, ciudad, municipio)

VALUES ('10', 'Nuevo Leon', 'Monterrey', 'Apodaca');

INSERT INTO CLIENTE

(Idcliente, Idtelefono, nombre, RFC, Iddireccion, correo)

VALUES ('10', '1', 'Acevedo Castillo', 'VEJ234', '1', 'acevedo_castillo@hotmail.com');

INSERT INTO CLIENTE

(Idcliente, Idtelefono, nombre, RFC, Iddireccion, correo)

VALUES ('9', '2', 'Armendaris Holanda', 'VEJ235', '2', 'arm_hola@hotmail.com');

INSERT INTO CLIENTE

(Idcliente, Idtelefono, nombre, RFC, Iddireccion, correo)

VALUES ('8', '3', 'Julio Mendoza', 'VEJ236', '3', 'julmen@hotmail.com');

INSERT INTO CLIENTE

(Idcliente, Idtelefono, nombre, RFC, Iddireccion, correo)

VALUES ('7', '4', 'Justin Bieber', 'VEJ237', '4', 'justinbieber@hotmail.com');

INSERT INTO CLIENTE

(Idcliente, Idtelefono, nombre, RFC, Iddireccion, correo)

VALUES ('6', '5', 'Carlos Almendariz', 'VEJ238', '5', 'caralm@hotmail.com');

INSERT INTO CLIENTE

(Idcliente, Idtelefono, nombre, RFC, Iddireccion, correo)

VALUES ('5', '6', 'Brandon Buenavista', 'VEJ239', '6', 'buenavista@hotmail.com');

INSERT INTO CLIENTE

(Idcliente, Idtelefono, nombre, RFC, Iddireccion, correo)

VALUES ('4', '7', 'Gerardo Ortiz', 'VEJ240', '7', 'geraor@hotmail.com');

INSERT INTO CLIENTE

(Idcliente, Idtelefono, nombre, RFC, Iddireccion, correo)

VALUES ('3', '8', 'Alejandra Buentello', 'VEJ241', '8', 'buentello@hotmail.com');

INSERT INTO CLIENTE

(Idcliente, Idtelefono, nombre, RFC, Iddireccion, correo)

VALUES ('2', '9', 'Iris Gonzalez', 'VEJ242', '9', 'irislamejor@hotmail.com');

INSERT INTO CLIENTE

(Idcliente, Idtelefono, nombre, RFC, Iddireccion, correo)

VALUES ('1', '10', 'Alejandro Gonzalez', 'VEJ243', '10', 'alegon@hotmail.com');

INSERT INTO PROVEEDOR

(Idproveedores, nombre, Idsumven)

VALUES ('1', 'ACCESO', '1');

INSERT INTO PROVEEDOR

(Idproveedores, nombre, Idsumven)

VALUES ('2', 'CFE', '2');

INSERT INTO PROVEEDOR

(Idproveedores, nombre, Idsumven)

VALUES ('3', 'TELMEX', '3');

INSERT INTO PROVEEDOR

(Idproveedores, nombre, Idsumven)

VALUES ('4', 'LIVERPOOL', '4');

INSERT INTO PROVEEDOR

(Idproveedores, nombre, Idsumven)

VALUES ('5', 'EL IMPARCIAL', '5');

INSERT INTO PROVEEDOR

(Idproveedores, nombre, Idsumven)

VALUES ('6', 'OXXO', '6');

INSERT INTO PROVEEDOR

(Idproveedores, nombre, Idsumven)

VALUES ('7', 'ICR', '7');

INSERT INTO PROVEEDOR

(Idproveedores, nombre, Idsumven)

VALUES ('8', 'RUEDO SONORA', '8');

INSERT INTO PROVEEDOR

(Idproveedores, nombre, Idsumven)

VALUES ('9', 'FUMIHOUSE', '9');

INSERT INTO PROVEEDOR

(Idproveedores, nombre, Idsumven)

VALUES ('10', 'ACCESOS', '10');


INSERT INTO EMPLEADO

(Idempleado, nombre, Idventas)

VALUES ('1', 'Eugenio Almaraz', '1');

INSERT INTO EMPLEADO

(Idempleado, nombre, Idventas)

VALUES ('2', 'Acevedo Ruiz Carolina', '2');

INSERT INTO EMPLEADO

(Idempleado, nombre, Idventas)

VALUES ('3', 'Bacab Pech Guillermo', '3');

INSERT INTO EMPLEADO

(Idempleado, nombre, Idventas)

VALUES ('4', 'Banda Jim�nez Francisco', '4');

INSERT INTO EMPLEADO

(Idempleado, nombre, Idventas)

VALUES ('5', 'Caballero Green Francisco', '5');

INSERT INTO EMPLEADO

(Idempleado, nombre, Idventas)

VALUES ('5', 'Mendez Palacios Guillermo', '5');

INSERT INTO EMPLEADO

(Idempleado, nombre, Idventas)

VALUES ('6', 'Gonzalez Garza Carolina', '6');

INSERT INTO EMPLEADO

(Idempleado, nombre, Idventas)

VALUES ('7', 'Caballero Mandaron Alejandro', '7');

INSERT INTO EMPLEADO

(Idempleado, nombre, Idventas)

VALUES ('8', 'Pasteur Perez Emiliano', '8');

INSERT INTO EMPLEADO

(Idempleado, nombre, Idventas)

VALUES ('9', 'Villagran Melendez Julia', '9');

INSERT INTO EMPLEADO

(Idempleado, nombre, Idventas)

VALUES ('10', 'Gonzalo Mara�on Benito', '10');

UPDATE TELEFONO
SET tel_casa = '84865978'
where Idtelefono = '1' 

UPDATE CLIENTE
SET correo = 'elmejor@hotmail.com' 
where Idcliente = '3' 

UPDATE DIRECCION
SET ciudad = 'Monterrey' 
where Iddireccion = '4' 

UPDATE EMPLEADO
SET nombre = 'Carlos gutierritos' 
where Idempleado = '5' 

UPDATE PROVEEDOR
SET nombre = 'TELCEL'
where Idproveedores = '6' 


DELETE FROM EMPLEADO
where nombre = 'Carlos gutierritos'

DELETE FROM EMPLEADO
where nombre = 'Gonzalo Mara�on Benito'

DELETE FROM PROVEEDOR
where Idproveedores = '4' 

DELETE FROM PROVEEDOR
where Idproveedores = '7' 

DELETE FROM PROVEEDOR
where Idproveedores = '3'











