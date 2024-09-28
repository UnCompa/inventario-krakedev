DROP TABLE IF EXISTS productos;
-- Creacion de la tabla de productos
CREATE TABLE productos (
codigo_producto serial not null,
nombre varchar(100) not null,
udm char(2) not null,
precio_venta money not null,
tiene_iva boolean not null,
coste money not null,
categoria int not null,
stock int not null default(0),
constraint productos_pk primary key (codigo_producto),
constraint productos_udm_fk foreign key (udm) references unidades_medida(codigo_udm),
constraint productos_categoria_fk foreign key (categoria) references categorias(codigo_cat)
);
-- Creacion de los inserts para la tabla de productos
INSERT INTO productos (nombre,udm,precio_venta,tiene_iva,coste,categoria,stock)
VALUES 
  ('Coca Cola', 'l', 0.25, false, 0.20, 5, 0),
  ('Papas', 'kg', 0.10, false, 0.05, 3, 0),
  ('Tomates', 'kg', 0.80, false, 0.50, 2, 0),
  ('Refresco Fanta', 'l', 0.30, false, 0.25, 5, 0),
  ('Harina', 'kg', 1.20, true, 1.00, 1, 0),
  ('Yogurt Natural', 'ml', 0.60, false, 0.50, 5, 0),
  ('Jugo de Naranja', 'l', 0.50, true, 0.40, 4, 0),
  ('Leche Entera', 'l', 0.90, true, 0.80, 4, 0);

SELECT * FROM productos
