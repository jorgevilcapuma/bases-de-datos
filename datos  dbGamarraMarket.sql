DROP DATABASE IF EXISTS dbGamarraMarket;
CREATE DATABASE dbGamarraMarket DEFAULT CHARACTER SET utf8mb4;
USE dbGamarraMarket;

-- Crear la tabla CLIENTE si no existe
CREATE TABLE IF NOT EXISTS cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_documento ENUM('DNI', 'CNE') NOT NULL,
    numero_documento VARCHAR(20) NOT NULL UNIQUE,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    celular VARCHAR(15),
    fecha_nacimiento DATE,
    activo TINYINT(1) DEFAULT 1,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertar registros en la tabla CLIENTE
INSERT INTO cliente
(tipo_documento, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento, activo)
VALUES
('DNI', '77889955', 'Alberto', 'Solano Pariona', 'alberto.pariona@empresa.com', '998456103', '1970-02-10', 1),
('DNI', '45781233', 'Alicia', 'García Campos', 'alicia.garcia@gmail.com', '998459872', '1980-03-20', 1),
('DNI', '315487922', 'Juana', 'Ávila Chumpitaz', 'juana.avila@gmail.com', '923568741', '1986-06-06', 1),
('CNE', '122116633', 'Ana', 'Enriquez Flores', 'ana.enriquez@empresa.com', '997845263', '1970-02-10', 1),
('CNE', '088741589', 'Claudia', 'Perales Álvarez', 'claudia.perales@yahoo.com', '986525871', '1981-07-25', 1),
('DNI', '41522587', 'Mario', 'Barrios Martínez', 'mario.barrios@outlook.com', '986525871', '1987-10-10', 1),
('CNE', '175258564', 'Brunela', 'Tarazona Guerra', 'brunela.tarazona@gmail.com', '995326741', '1990-06-06', 1),
('DNI', '47142356', 'Alejandro', 'Jimenez Huapaya', 'alejandro.jimenez@gmail.com', '941525365', '1989-06-01', 1),
('DNI', '15352585', 'Claudia', 'Marquez Litano', 'claudia.marquez@gmail.com', '98514723', '1991-10-01', 1),
('CNE', '465772587', 'Mario', 'Rodriguez Moya', 'mario.rodriguez@outlook.com', '912662587', '1987-11-10', 1),
('CNE', '837952514', 'Luisa', 'Guerra Álvarez', 'luisa.guerra@outlook.com', '974422136', '1988-12-21', 1),
('DNI', '74142855', 'Pedro Al', 'Candela Valenzuela', 'pedro.candela@gmail.com', '941485525', '1995-06-30', 1),
('DNI', '53298147', 'Angel Mo', 'Rojas Avila', 'angel.rojas@outlook.com', '97514703', '1975-03-02', 1),
('DNI', '41523465', 'Hilario Fe', 'Avila Huapaya', 'hilario.avila@gmail.com', '985514326', '2000-05-02', 1),
('CNE', '757472186', 'Octavio', 'Marquez Soriano', 'octavio.marquez@yahoo.es', '966223141', '2000-09-22', 1),
('CNE', '586894230', 'Sandra', 'Vasquez Castro', 'sandra.vasquez@outlook.es', '92561437', '2003-04-12', 1),
('DNI', '41552647', 'Genoveva', 'Ortiz Paredes', 'genoveva.ortiz@yahoo.com', '926547137', '2003-04-12', 1),
('DNI', '457412917', 'Oscar C.', 'Romero Zavala', 'oscar.romero@yahoo.com', '988223145', '2002-08-25', 1),
('DNI', '00253641', 'Eliseo', 'Prada Ortiz', 'eliseo.prada@yahoo.com', '986547201', '2004-09-15', 1);

-- Consultar todos los registros de la tabla CLIENTE
SELECT * FROM cliente;




-- Crear la tabla VENDEDOR si no existe
CREATE TABLE IF NOT EXISTS vendedor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_documento VARCHAR(3) NOT NULL,
    numero_documento VARCHAR(20) NOT NULL UNIQUE,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    celular VARCHAR(15),
    email VARCHAR(100),
    activo TINYINT(1) DEFAULT 1
);

-- Insertar registros en la tabla VENDEDOR
INSERT INTO vendedor

(tipo_documento, numero_documento, nombres, apellidos, salario, celular, email, activo)
VALUES
('DNI', '85471236', 'Enrique', 'Pérez Manco', 1500.00, '96521873', 'enrique.perez@outlook.com', 1),
('DNI', '47259136', 'Sofía', 'Ávila Solis', 1350.00, '987451236', NULL, 1), 
('DNI', '61542280', 'Marcela', 'Napaico Cama', 1600.00, '965874357', 'marcela.napaico@gmail.com', 1),
('CNE', '742536140', 'Carmelo', 'Rodríguez Chauca', 1550.00, NULL, 'carmelo.rodriguez@yahoo.com', 1);

SELECT * FROM vendedor;


-- Crear la tabla PRENDA si no existe
CREATE TABLE IF NOT EXISTS prenda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    cantidad INT NOT NULL,
    talla INT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    activo TINYINT(1) DEFAULT 1
);

-- Insertar registros en la tabla PRENDA
INSERT INTO prenda
(descripcion, marca, cantidad, talla, precio, activo)
VALUES
('Pantalon Jeans', 'Levis', 60, 28, 65.80, 1),
('Camisa manga corta', 'Adams', 75, 16, 55.00, 1),
('Polo sport', 'Australia', 100, 16, 40.00, 1),
('Camisa manga larga', 'Newport', 150, 16, 42.50, 1),
('Pijama para caballero', 'Adams', 180, 28, 79.50, 1),
('Corbata', 'Maxwell', 85, 16, 14.50, 1),
('Pijama para dama', 'Adams', 170, 24, 55.50, 1),
('Pantalon Jeans', 'Australia', 200, 28, 68.50, 1),
('Camisa Sport', 'John Holden', 85, 16, 88.50, 1),
('Shorts Jeans', 'Pepe Jeans', 185, 28, 77.20, 1);

-- Consultar registros en la tabla PRENDA
SELECT * FROM prenda;

-- Crear la tabla VENTA si no existe
CREATE TABLE IF NOT EXISTS venta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_hora DATETIME NOT NULL,
    cliente_id INT NOT NULL,
    vendedor_id INT NOT NULL,
    activo TINYINT(1) DEFAULT 1,
    FOREIGN KEY (cliente_id) REFERENCES cliente(id),
    FOREIGN KEY (vendedor_id) REFERENCES vendedor(id)
);

-- Insertar registros en la tabla VENTA
INSERT INTO venta (fecha_hora, cliente_id, vendedor_id, activo)
VALUES
('2023-05-01 19:04:08', 1, 1, 1),
('2023-05-01 19:04:08', 3, 1, 1),
('2023-05-01 19:04:08', 4, 1, 1),
('2023-05-01 19:04:08', 18, 1, 1);

-- Consultar registros en la tabla VENTA
SELECT * FROM venta;

-- Crear la tabla VENTA_DETALLE si no existe
CREATE TABLE IF NOT EXISTS venta_detalle (
    id INT AUTO_INCREMENT PRIMARY KEY,
    venta_id INT NOT NULL,
    prenda_id INT NOT NULL,
    cantidad INT NOT NULL,
    FOREIGN KEY (venta_id) REFERENCES venta(id),
    FOREIGN KEY (prenda_id) REFERENCES prenda(id)
);

-- Insertar registros en la tabla VENTA_DETALLE
INSERT INTO venta_detalle (venta_id, prenda_id, cantidad)
VALUES
(1, 1, 2),
(1, 2, 1),
(2, 4, 5),
(2, 1, 1),
(2, 5, 1),
(3, 2, 3),
(3, 8, 4),
(4, 4, 3),
(4, 6, 2);

-- Consultar registros en la tabla VENTA_DETALLE
SELECT * FROM venta_detalle;

-- 9. Actualizar el número de celular de Mario Rodríguez Mayo
UPDATE cliente
SET celular = '922881101'
WHERE tipo_documento = 'CNE' AND numero_documento = '465772587';

-- 10. Actualizar el número de celular del cliente con DNI 53298147
UPDATE cliente
SET celular = '977226604'
WHERE tipo_documento = 'DNI' AND numero_documento = '53298147';

-- 11. Eliminar lógicamente a los clientes con DNI: 11453265, 74142585, 49985471
UPDATE cliente
SET activo = 0
WHERE numero_documento IN ('11453265', '74142585', '49985471');

-- 12. Los clientes con DNI: 87952514, 55869321 y 74142585 pierden su número de celular (debe quedar en blanco)
UPDATE cliente
SET celular = NULL
WHERE numero_documento IN ('87952514', '55869321', '74142585');

-- 13. Reactivar al cliente Oscar César Quiroz Zavala y actualizar su correo
UPDATE cliente
SET activo = 1, email = 'oscar.quiroz@yahoo.es'
WHERE nombres = 'Oscar César' AND apellidos = 'Quiroz Zavala';

-- Mostrar los registros de la tabla CLIENTE para verificar los resultados de las actualizaciones
SELECT * FROM cliente
WHERE numero_documento IN ('465772587', '53298147', '11453265', '74142585', '49985471', '87952514', '55869321');

-- 14. Insertar nuevos clientes y un vendedor
INSERT INTO cliente (tipo_documento, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento, activo)
VALUES
('DNI', '15352585', 'Claudia', 'Litano', 'claudia.marquez@gmail.com', NULL, '1991-10-01', 1),
('DNI', '53298147', 'Angel Manuel', 'Rojas Avila', 'angel.rojas@outlook.com', NULL, '1975-03-02', 1),
('DNI', '41552567', 'Genoveva Pilar', 'Ortiz Quispe', 'genoveva.ortiz@outlook.es', NULL, '2003-04-12', 1);

INSERT INTO vendedor (tipo_documento, numero_documento, nombres, apellidos, salario, celular, email, activo)
VALUES
('DNI', '49985471', 'Oscar César', 'Quiroz Zavala', 1500.00, '988223145', 'oscar.quiroz@yahoo.es', 1);

-- 15. Actualizar el precio del polo sport de marca Australia a 45.00
UPDATE producto
SET precio = 45.00
WHERE descripcion = 'Polo sport' AND marca = 'Australia';

-- 16. Cambiar el nombre de la prenda "Corbata" por "Corbata Michi elegante"
UPDATE producto
SET descripcion = 'Corbata Michi elegante'
WHERE descripcion = 'Corbata';

-- 17. Eliminar físicamente las prendas: "Camisa manga corta" y "Camisa Sport"
DELETE FROM producto
WHERE descripcion IN ('Camisa manga corta', 'Camisa Sport');

-- 18. Eliminar físicamente al vendedor Marcela Napaico Cama
DELETE FROM vendedor
WHERE nombres = 'Marcela' AND apellidos = 'Napaico Cama';

-- 19. Eliminar físicamente los clientes cuyos números de documentos son: 47142536 y 77889955
DELETE FROM cliente
WHERE numero_documento IN ('47142536', '77889955');

-- 20. Eliminar todos los clientes nacidos en el año 1980
DELETE FROM cliente
WHERE YEAR(fecha_nacimiento) = 1980;

-- Mostrar los resultados de las tablas afectadas para comprobar los cambios
SELECT * FROM cliente WHERE numero_documento IN ('15352585', '53298147', '41552567');
SELECT * FROM vendedor WHERE numero_documento = '49985471';
SELECT * FROM producto WHERE descripcion IN ('Polo sport', 'Corbata Michi elegante');





