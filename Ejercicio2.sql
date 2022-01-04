use servidorpruebauno;

create table personas(
id   int(7) primary key auto_increment,
nombre	varchar(50) not null,
domicilio varchar(70) not null
);

insert into personas (nombre, domicilio)
values ("Federico Fernandez", "Don Bosco 4115 Caba");

select *
from personas;

insert into personas (nombre, domicilio)
values ("Mariana Bell", "Don Bosco 4120 Caba");

update personas
set domicilio = "Yapeyu 215 Caba"
where nombre = "Federico Fernandez";

delete from personas
where nombre = "Mariana Bell";