-- Creación de la tabla Proveedores
DROP TABLE IF EXISTS proveedores;
CREATE TABLE proveedores (
  identificador varchar(13) NOT NULL,
  tipo_documento char(1) NOT NULL,
  nombre varchar(30) NOT NULL,
  telefono varchar(10) NOT NULL,
  correo varchar(40) NOT NULL,
  direccion varchar(40) NOT NULL,
  CONSTRAINT proveedores_pk PRIMARY KEY (identificador)
);

INSERT INTO proveedores(identificador,tipo_documento,nombre,telefono,correo,direccion)
VALUES 
	('1789236284912','R','Brandon','0980521452','brandon@gmail.com','Buar'),
	('1729097228', 'C', 'Juan', '0987654321', 'juan@gmail.com','New yoking');
-- Creación de la tabla Tipo_documento
DROP TABLE IF EXISTS tipo_documento;
CREATE TABLE tipo_documento (
  codigo char(1) NOT NULL,
  descripcion varchar(10) NOT NULL,
  CONSTRAINT tipo_documento_pk PRIMARY KEY (codigo)
);

INSERT INTO tipo_documento (codigo,descripcion)
VALUES 
	('C', 'Cedula'),
	('R', 'Ruc');

SELECT * FROM proveedores;