-- Creación de la tabla Cabecera_ventas
--DROP TABLE IF EXISTS cabecera_ventas;
CREATE TABLE cabecera_ventas (
  codigo serial NOT NULL,
  fecha timestamp WITHOUT TIME ZONE NOT NULL,
  total_sin_iva money NOT NULL,
  iva money NOT NULL,
  total money NOT NULL,
  CONSTRAINT cabecera_ventas_pk PRIMARY KEY (codigo)
);

INSERT INTO cabecera_ventas (fecha, total_sin_iva,iva,total)
VALUES
	('2024-09-28T18:33:55+00:00',5, 0.75, 5.75);
-- Creación de la tabla Detalle_venta
--DROP TABLE IF EXISTS detalle_venta;
CREATE TABLE detalle_venta (
  codigo serial NOT NULL,
  producto_fk int NOT NULL,
  cantidad int NOT NULL,
  precio_venta money NOT NULL,
  subtotal money NOT NULL,
  subtotal_iva money NOT NULL,
  cabecera_ventas_fk int NOT NULL,
  CONSTRAINT detalle_venta_pk PRIMARY KEY (codigo),
  CONSTRAINT detalle_venta_producto_fk FOREIGN KEY (producto_fk) REFERENCES productos(codigo_producto),
  CONSTRAINT detalle_venta_cabecera_fk FOREIGN KEY (cabecera_ventas_fk) REFERENCES cabecera_ventas(codigo)
);

INSERT INTO detalle_venta (producto_fk,cantidad,precio_venta,subtotal,subtotal_iva,cabecera_ventas_fk)
VALUES
(4, 5, 0.30, 1.50, 1.68, 1),
(1, 10, 0.25, 2.50, 2.88, 1);

SELECT * FROM detalle_venta;