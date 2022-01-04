use servidorpruebauno;

describe departamento;

select * from region; 

insert into region (id,nombre) value (1, "Buenos Aires");

insert into region (id,nombre) value (2, "Entre Ríos");

insert into region (id,nombre) value (3, "Córdoba");

insert into region (id,nombre) value (4, "Mendoza");

select * from region;

insert into departamento (id, nombre, regionId) values (10,"Finanzas",3);
insert into departamento (id, nombre, regionId) values (20,"Produccion",4);
insert into departamento (id, nombre, regionId) values (30,"Logística",1);
insert into departamento (id, nombre, regionId) values (40,"Comercializacion",2);

select * from departamento;

insert into empleado (id, nombre, domicilio, correo, telefono, deptoId)
values (1, "Juan Perez","Larrea 16 Parana","juanp1001gmail.com","15-5285-4625", 40);

insert into empleado (id, nombre, domicilio, correo, telefono, deptoId)
values (2,"Ariel Pedraza","Flores 5287 Pilar","apedraza@gmail.com","0221-524685",10);


insert into empleado (id, nombre, domicilio, correo, telefono, deptoId)
values(3,"Gabriel Lopez","Vallese 2465","gabriel@ejem.com","1522445654",30);




