CREATE DATABASE ISPC;
USE ISPC;

CREATE TABLE Dueno
(
DNI int not null auto_increment,
Nombre varchar(30) not null,
Apellido varchar(30) not null,
Teléfono int not null,
Dirección varchar(50) not null,
primary key (DNI)
);

CREATE TABLE Perro -- Corresponde al ejercicio número 1
(
ID_Perro int not null auto_increment,
Nombre varchar(30) not null,
Fecha_nac date null, -- El dueño puede no conocer la fecha de nacimiento del perro.
Sexo varchar(10) not null,
DNI_Dueno int not null,
primary key (ID_Perro),
foreign key (DNI_Dueno) references Dueno(DNI)
);

CREATE TABLE Historial
(
ID_Historial int not null auto_increment,
Fecha date not null,
Perro int not null,
Descripcion text null, -- No es obligatorio agregar una descripción.
Monto float unsigned not null,
primary key (ID_Historial),
foreign key (Perro) references Perro(ID_Perro)
);

INSERT INTO Dueno(DNI, Nombre, Apellido, Teléfono, Dirección) -- Corresponde al ejercicio número 2
VALUES (28957346, 'Juan', 'Perez', 4789689, 'Belgrano 101');

INSERT INTO Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_Dueno) 
VALUES (1, 'Fido', '2012-12-12', 'Macho', 28957346); -- Termina ejercicio número 2

INSERT INTO Dueno(DNI, Nombre, Apellido, Teléfono, Dirección) -- Comienza ejercicio número 8
VALUES (23546987, 'Maria', 'Perez', 4781529, 'Pueyrredon  811');

INSERT INTO Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_Dueno)
VALUES (10, 'Puppy', '2012-12-12', 'Hembra', 23546987);

INSERT INTO Historial(ID_Historial, Fecha, Perro, Descripcion, Monto) 
VALUES (1, '2022-08-08', 10, NULL, 2000); -- Termina ejercicio número 8
