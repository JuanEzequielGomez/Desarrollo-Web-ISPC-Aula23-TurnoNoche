
insert into perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno)
values ('13', 'Puppy', '12/12/2012', 'Macho', '123');

update Dueno
set direccion='Libertad 123'
where DNI=28957346;
update Perro
set Fecha_nac=07/02/1990
where ID_Perro=14;
delete from Perro where ID_historial = 0;


