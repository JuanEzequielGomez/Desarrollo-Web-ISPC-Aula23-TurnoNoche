CREATE DATABASE final ;

USE final;

CREATE TABLE Dueno (
  DNI INT,
  Nombre VARCHAR(45),
  Apellido VARCHAR(45),
  Telefono INT,
  Direccion VARCHAR(45),
  PRIMARY KEY (DNI));

CREATE TABLE Perro (
  ID_Perro INT AUTO_INCREMENT,
  Nombre VARCHAR(45),
  Fecha_Nac DATE,
  Sexo VARCHAR(15),
  DNI_Dueno INT,
  PRIMARY KEY (ID_Perro),
  FOREIGN KEY (DNI_Dueno) REFERENCES Dueno(DNI));
  
  CREATE TABLE Historial (
  ID_Historial INT AUTO_INCREMENT,
  Fecha DATE,
  Perro INT,
  Descripcion VARCHAR(150),
  Monto FLOAT,
  PRIMARY KEY (ID_Historial),
  FOREIGN KEY (Perro) REFERENCES Perro(ID_Perro));
  
INSERT INTO Dueno VALUES (40132393, "Jazmin", "Amato", 1133972393, "Algun lugar");
INSERT INTO Perro VALUES (DEFAULT, "Negrito","2020-05-13", "Macho",40132393);
INSERT INTO Historial VALUES (DEFAULT, "2022-08-14",1, "Corte de pelo", 1500);

-- Ejercicio Nro6: Obtener todos los perros que asistieron a la peluquería en 2022.
SELECT * FROM Perro P
JOIN Historial H ON P.ID_Perro = H.Perro
WHERE H.Fecha >= "2022-01-01";

