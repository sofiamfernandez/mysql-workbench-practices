use servidorpruebauno;

/* DDL Lenguaje de Definicion de Datos - Crear Modificar o Eliminar Estructuras */ 

rename table personas to persona; 

alter table persona
drop column domicilio;


alter table persona drop primary key;


ALTER TABLE persona MODIFY id INT NOT NULL;
ALTER TABLE persona DROP PRIMARY KEY;

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

drop table persona;
