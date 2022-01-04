use servidorpruebauno; 

describe clientes;
select nombre, apellido
from clientes
order by apellido;

describe articulos; 
select nombre, precio from articulos;

select nombre as Nombre, precio as Precio, round(precio*1.5,2) as "Precios potenciales" from articulos
order by precio * 1.5 desc;

set autocommit = 0;
update articulos 
set precio = round(precio * 1.5,2); 

rollback; 
commit;

#De articulos sacar los precios menores a 50
select * from articulos where precio > 50;
#intervalo

select * from articulos where precio between 25 and 55;

select * from clientes order by id_cliente desc limit 2,2;

select * from articulos where nombre = "balde";

select * from articulos 
where nombre in ("destornillador", "pinza", "martillo") 
and stock > 25; 

select * from clientes where id_cliente in(1,3,4,6); 

/*función de grupo*/
select id_codigo, sum(monto)
from facturas
group by id_codigo;

select monto from facturas where id_codigo =5; 
/*promedio*/
select avg(monto) from facturas;

/*subconsulta*/

select * from facturas 
where monto > (select avg(monto) from facturas);

select* from clientes 
where mail is null;

/*seleccionar las localidades y las provincias a las que pertenecen*/
select id.provincia, localidad from localidades;
select localidades.localidad, provincias.provincia 
from localidades.id_provincia, provincias.id_provincia; 

