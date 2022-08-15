CREATE DATABASE finalMonjoEj5 ;

USE finalMonjoEj5;

-- creación de base de datos

CREATE TABLE Dueño (
  DNI INT,
  Nombre VARCHAR(30),
  Apellido VARCHAR(15),
  Teléfono INT,
  Dirección VARCHAR(15),
  PRIMARY KEY (DNI));

CREATE TABLE Perro (
  ID_Perro INT AUTO_INCREMENT,
  Nombre VARCHAR(30),
  Fecha_Nac DATE,
  Sexo VARCHAR(10),
  DNI_Dueño INT,
  PRIMARY KEY (ID_Perro),
  FOREIGN KEY (DNI_Dueño) REFERENCES Dueño(DNI));
  
  CREATE TABLE Historial (
  ID_Historial INT AUTO_INCREMENT,
  Fecha DATE,
  Perro INT,
  Descripcion VARCHAR(100),
  Monto FLOAT,
  PRIMARY KEY (ID_Historial),
  FOREIGN KEY (Perro) REFERENCES Perro(ID_Perro));
  
  -- valores de prueba agregados
  insert into Dueño values (43408999,"Pedro","Giménez",35411234,"Irigoyen");
  insert into Dueño values (20523459,"Pedro","Monjo",351241342,"Güemes");
  insert into Dueño values (52323132,"Pepe","Cejas",41234234,"Avellaneda");
  insert into Perro values (default,"Pietro","2002-02-13","Masculino",43408999);
  insert into Perro values (default,"Lula","2003-03-11","Femenino",20523459);
  insert into Perro values (default,"Max","2000-11-04","Masculino",52323132);
  insert into Historial values (default, "2022-08-14",1, "Comida de perro", 700);
  -- Las cosas agregadas en historial, para la actividad 5 
  -- no tienen relevancia
  
  -- Actividad 5
  select * from Dueño as d 
  inner join Perro as p on d.DNI=p.DNI_Dueño where d.Nombre="Pedro";
  
  -- Podemos reemplazar el signo " * " por "p.Nombre, d.Nombre" 
  -- para seleccionar los campos que queremos que 
  -- nos muestre (en este caso solo los nombres) y filtrar los demás.
  -- quedaría de la siguiente manera. Como se pide en la consigna.
  
  select p.Nombre, d.Nombre from Dueño as d 
  inner join Perro as p on d.DNI=p.DNI_Dueño where d.Nombre="Pedro";
  
  -- Fin de la Actividad 5.
  