drop table if exists facturas;
drop table if exists articulos;
drop table if exists clientes;
drop table if exists localidades;
drop table if exists provincias;


create table provincias 
(
  id_provincia		integer unsigned 	NOT NULL auto_increment,
  provincia	 		varchar(50), 		
  PRIMARY KEY  (id_provincia)
);


create table localidades 
(
  id_localidad	    integer unsigned 	NOT NULL auto_increment,
  id_provincia		integer unsigned,
  localidad	 		varchar(50), 		

  PRIMARY KEY  (id_localidad),
	FOREIGN KEY (id_provincia) REFERENCES provincias(id_provincia) 
);


create table clientes 
(
 id_cliente 	integer unsigned NOT NULL auto_increment,
 id_localidad   integer unsigned,
 nombre 		varchar(40),
 apellido 		varchar(100),
 telefono 		varchar(30),
 mail 			varchar(50),
 fechaNac 		date default '0000-00-00',
 PRIMARY KEY  (id_cliente), 
 FOREIGN KEY (id_localidad) REFERENCES localidades(id_localidad) 
);


create table articulos 
(
  id_codigo		integer 				NOT NULL,
  nombre	 	varchar(50),
  precio		double,
  stock			integer,
  PRIMARY KEY  (id_codigo)
);


create table facturas 
(
  letra	 		    char				NOT NULL,
  numero	 		integer 			NOT NULL,
  id_cliente		integer unsigned 	NOT NULL,
  id_codigo			integer 			NOT NULL,
  fecha	 		    date,
  monto				double,
  PRIMARY KEY  (letra,numero),
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente), 
  FOREIGN KEY (id_codigo) REFERENCES articulos(id_codigo) 
);



insert into provincias (provincia) values ('Buenos Aires');
insert into provincias (provincia) values ('Cordoba');
insert into provincias (provincia) values ('Entre Rios');

insert into localidades (localidad, id_provincia) values ('Avellaneda', 1);
insert into localidades (localidad, id_provincia) values ('Castelar', 1);
insert into localidades (localidad, id_provincia) values ('San Martin', 1);
insert into localidades (localidad, id_provincia) values ('Capilla del Monte',2);
insert into localidades (localidad, id_provincia) values ('Bell Ville', 2);
insert into localidades (localidad, id_provincia) values ('Villa Carlos Paz', 2);
insert into localidades (localidad, id_provincia) values ('Colon', 3);
insert into localidades (localidad, id_provincia) values ('Villa Elisa', 3);
insert into localidades (localidad, id_provincia) values ('Villa Federacion', 3);

insert into clientes (nombre, apellido, telefono, mail, fechaNac, id_localidad) values ('Juan' , 'Ortega', '4289-2385', 'juan_ortega@gmail.com', default, 1);
insert into clientes (nombre, apellido, telefono, mail, fechaNac, id_localidad) values ('Jose'  , 'Quiroga', '4981-2367', 'josequiroga@gmail.com', '2008-01-01',1);
insert into clientes (nombre, apellido, telefono, mail, fechaNac, id_localidad) values ('Maria' , 'Magdalena', NULL, NULL, '1958-01-01',2);
insert into clientes (nombre, apellido, telefono, mail, fechaNac, id_localidad) values ('Marcos', 'Paz', NULL, NULL, '1932-01-01',2);
insert into clientes (nombre, apellido, telefono, mail, fechaNac, id_localidad) values ('Susana', 'Gomez', '3698-7852', NULL, '1954-03-06',3);
insert into clientes (nombre, apellido, telefono, mail, fechaNac, id_localidad) values ('Juan', 'Perez', '4358-4787', 'juanperez@gmail.com', '2010-05-24',3); 

insert into articulos (id_codigo, nombre, precio, stock) values (1,'destornillador',25.25,50);
insert into articulos (id_codigo, nombre, precio, stock) values (2,'pinza'			,35.00,22);
insert into articulos (id_codigo, nombre, precio, stock) values (3,'martillo'		,15.78,28);
insert into articulos (id_codigo, nombre, precio, stock) values (4,'maza'			,35.00,18);
insert into articulos (id_codigo, nombre, precio, stock) values (5,'balde'			,55.00,13);
insert into articulos (id_codigo, nombre, precio, stock) values (6,'plomada'		,35.00,100);
insert into articulos (id_codigo, nombre, precio, stock) values (7,'pala'			,11.00,15);

insert into facturas (letra, numero, id_cliente, id_codigo, fecha, monto) value ('A', 1, 1, 1, '2017-01-01', 1000);	
insert into facturas (letra, numero, id_cliente, id_codigo, fecha, monto) value ('A', 2, 1, 2, '2017-01-03', 3000);
insert into facturas (letra, numero, id_cliente, id_codigo, fecha, monto) value ('A', 3, 2, 3, '2017-01-04', 2000);
insert into facturas (letra, numero, id_cliente, id_codigo, fecha, monto) value ('A', 4, 2, 4, '2017-01-05', 7000);
insert into facturas (letra, numero, id_cliente, id_codigo, fecha, monto) value ('A', 5, 2, 4, '2017-02-01', 2500);
insert into facturas (letra, numero, id_cliente, id_codigo, fecha, monto) value ('A', 6, 3, 5, '2017-02-07', 3850);
insert into facturas (letra, numero, id_cliente, id_codigo, fecha, monto) value ('A', 7, 4, 5, '2017-03-08', 1600);
insert into facturas (letra, numero, id_cliente, id_codigo, fecha, monto) value ('A', 8, 4, 5, '2017-03-09', 1120);
insert into facturas (letra, numero, id_cliente, id_codigo, fecha, monto) value ('A', 9, 2, 1, '2017-04-01', 1000);
insert into facturas (letra, numero, id_cliente, id_codigo, fecha, monto) value ('B', 1, 5, 6, '2017-01-09', 1641);
insert into facturas (letra, numero, id_cliente, id_codigo, fecha, monto) value ('B', 2, 5, 6, '2017-02-09', 999);
insert into facturas (letra, numero, id_cliente, id_codigo, fecha, monto) value ('B', 3, 5, 6, '2017-02-10', 25);
insert into facturas (letra, numero, id_cliente, id_codigo, fecha, monto) value ('B', 4, 5, 6, '2017-02-11', 39.99);
insert into facturas (letra, numero, id_cliente, id_codigo, fecha, monto) value ('B', 5, 5, 6, '2017-03-09', 919);
insert into facturas (letra, numero, id_cliente, id_codigo, fecha, monto) value ('B', 6, 5, 6, '2017-03-10', 25);
insert into facturas (letra, numero, id_cliente, id_codigo, fecha, monto) value ('B', 7, 5, 6, '2017-04-11', 929.99);
insert into facturas (letra, numero, id_cliente, id_codigo, fecha, monto) value ('B', 8, 5, 6, '2017-05-09', 16041);
insert into facturas (letra, numero, id_cliente, id_codigo, fecha, monto) value ('B', 9, 4, 5, '2017-03-01', 1600);

commit;