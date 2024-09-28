DROP TABLE IF EXISTS categorias_unidad_medida;
---Creando tabla de categorias para las unidades de medida
CREATE TABLE categorias_unidad_medida (
codigo_udm char(1) not null,
nombre varchar(100) not null,
constraint categorias_unidad_medida_pk primary key (codigo_udm)
);
DROP TABLE IF EXISTS unidades_medida;
--- Creando la tabla de unidades 
CREATE TABLE unidades_medida (
codigo_udm char(2) not null,
descripcion varchar(100) not null,
categoria_udm char(1) not null,
constraint unidades_medida_pk primary key (codigo_udm),
constraint categoria_udm_fk foreign key (categoria_udm) references categorias_unidad_medida(codigo_udm)
);

--Insertando valores
INSERT INTO categorias_unidad_medida (codigo_udm,nombre)
VALUES ('P','Peso'),('L','Liquido');

INSERT INTO unidades_medida (codigo_udm,descripcion,categoria_udm)
VALUES
	('kg', 'kilogramos', 'P'),
	('mg', 'miligramos', 'P'),
	('l', 'litros', 'L'),
	('ml', 'mililitros', 'L');

SELECT * FROM unidades_medida;