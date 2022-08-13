use ispc;

create table Dueno (
DNI int primary key,
Nombre varchar(10),
Apellido varchar(10),
Telefono int,
Direccion varchar(15)
);
create table Perro (
ID_Perro int primary key,
Nombre varchar(10),
Fecha_nac date,
Sexo varchar(10),
DNI_Dueno int
);
create table Historial (
ID_Historial int primary key,
Fecha date,
Perro varchar(10),
Descripcion varchar(20),
Monto int
);

insert into perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno)
values ('13', 'Puppy', '12/12/2012', 'Macho', '123');

update Dueno
set direccion='Libertad 123'
where DNI=28957346;
update Perro
set Fecha_nac=07/02/1990
where ID_Perro=14;
delete from Perro where ID_historial = 0;


