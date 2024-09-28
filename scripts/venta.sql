-- Creación de la tabla Historial_stock
DROP TABLE IF EXISTS historial_stock;
CREATE TABLE historial_stock (
  codigo serial NOT NULL,
  fecha timestamp WITHOUT TIME ZONE NOT NULL,
  referencia varchar(20) NOT NULL,
  producto_fk serial NOT NULL,
  cantidad int NOT NULL,
  CONSTRAINT historial_stock_pk PRIMARY KEY (codigo),
  CONSTRAINT historial_stock_producto_fk FOREIGN KEY (producto_fk) REFERENCES productos(codigo_producto)
);