DROP TABLE IF EXISTS categorias;
CREATE TABLE categorias (
codigo_cat serial not null,
nombre varchar(100) not null,
categoria_padre int null,
constraint categorias_pk primary key (codigo_cat),
constraint categoria_padre_fk foreign key (categoria_padre) references categorias(codigo_cat)
);

INSERT INTO categorias (nombre, categoria_padre) 
VALUES
	('Materia Prima',null),
	('Verduras', 1),
	('Legumbres', 2),
	('Liquido',null),
	('Refresco',4);

select * from categorias;
