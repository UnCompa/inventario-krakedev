-- Creación de la tabla Historial_stock
DROP TABLE IF EXISTS historial_stock;
CREATE TABLE historial_stock (
  codigo serial NOT NULL,
  fecha timestamp WITHOUT TIME ZONE NOT NULL,
  referencia varchar(20) NOT NULL,
  producto_fk int NOT NULL,
  cantidad int NOT NULL,
  CONSTRAINT historial_stock_pk PRIMARY KEY (codigo),
  CONSTRAINT historial_stock_producto_fk FOREIGN KEY (producto_fk) REFERENCES productos(codigo_producto)
);

INSERT INTO historial_stock (fecha,referencia,producto_fk, cantidad) 
VALUES
	('2024-09-28T18:33:55+00:00','LIQUIDO 1', 1, 10),
	('2024-09-28T18:33:55+00:00','LIQUIDO 2', 4, 5),
	('2024-09-28T18:33:55+00:00','MATERIA 1', 5, 15);

SELECT * FROM historial_stock;