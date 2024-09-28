-- Creación de la tabla Estado_pedido
DROP TABLE IF EXISTS estado_pedido;
CREATE TABLE estado_pedido (
  codigo char(1) NOT NULL,
  descripcion varchar(10) NOT NULL,
  CONSTRAINT estado_pedido_pk PRIMARY KEY (codigo)
);

INSERT INTO estado_pedido (codigo, descripcion)
VALUES
	('S', 'Solicitado'),
	('R', 'Recibido');
-- Creación de la tabla Cabecera_pedido
DROP TABLE IF EXISTS cabecera_pedido;
CREATE TABLE cabecera_pedido (
  numero_pedido serial NOT NULL,
  proveedor varchar(13) NOT NULL,
  fecha date NOT NULL,
  estado_fk char(1) NOT NULL,
  CONSTRAINT cabecera_pedido_pk PRIMARY KEY (numero_pedido),
  CONSTRAINT cabecera_pedido_proveedor_fk FOREIGN KEY (proveedor) REFERENCES proveedores(identificador),
  CONSTRAINT cabecera_pedido_estado_fk FOREIGN KEY (estado_fk) REFERENCES estado_pedido(codigo)
);

INSERT INTO cabecera_pedido (proveedor, fecha, estado_fk)
VALUES 
	('1729097228','2024/09/10','S'),

-- Creación de la tabla Detalle_pedido
DROP TABLE IF EXISTS detalle_pedido;
CREATE TABLE detalle_pedido (
  codigo serial NOT NULL,
  cabecera_pedido_fk serial NOT NULL,
  producto int NOT NULL,
  cantidad_solicitada money NOT NULL,
  subtotal money NOT NULL,
  cantidad_recibida money NOT NULL,
  CONSTRAINT detalle_pedido_pk PRIMARY KEY (codigo),
  CONSTRAINT detalle_pedido_cabecera_fk FOREIGN KEY (cabecera_pedido_fk) REFERENCES cabecera_pedido(numero_pedido),
  CONSTRAINT detalle_pedido_producto_fk FOREIGN KEY (producto) REFERENCES productos(codigo_producto)
);

INSERT INTO detalle_pedido (cabecera_pedido_fk, producto, cantidad_solicitada, subtotal, cantidad_recibida)
VALUES
	(1,1,10,2.50,0),
	(1,4,5,1.50,0);

SELECT * FROM detalle_pedido;