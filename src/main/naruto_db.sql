CREATE DATABASE naruto_santiago_marquez_bello;

USE naruto_santiago_marquez_bello;

CREATE TABLE Mision_Ninja(
    ID_Ninja BIGINT ,
    ID_Mision BIGINT ,
    FechaInicio BIGINT ,
    FechaFin BIGINT 
);
CREATE TABLE Ninja(
    ID BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Rango BIGINT,
    Aldea VARCHAR(50) ,
    Nombre VARCHAR(50)
);
CREATE TABLE Mision(
    ID BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Descripcion VARCHAR(255) ,
    Rango BIGINT ,
    Recompensa DOUBLE(8, 2)
);
CREATE TABLE Rango(
    ID BIGINT  NOT NULL  PRIMARY KEY,
    NombreRango VARCHAR(50) NOT NULL
);
CREATE TABLE Habilidad(
    ID_Ninja BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(60) ,
    Descripcion VARCHAR(255)
);
ALTER TABLE
    Mision_Ninja ADD CONSTRAINT mision_ninja_id_ninja_foreign FOREIGN KEY(ID_Ninja) REFERENCES Ninja(ID);
ALTER TABLE
    Habilidad ADD CONSTRAINT habilidad_id_ninja_foreign FOREIGN KEY(ID_Ninja) REFERENCES Ninja(ID);
ALTER TABLE
    Ninja ADD CONSTRAINT ninja_rango_foreign FOREIGN KEY(Rango) REFERENCES Rango(ID);
ALTER TABLE
    Mision ADD CONSTRAINT mision_rango_foreign FOREIGN KEY(Rango) REFERENCES Rango(ID);
ALTER TABLE
    Mision_Ninja ADD CONSTRAINT mision_ninja_id_mision_foreign FOREIGN KEY(ID_Mision) REFERENCES Mision(ID);





/*Inserts Rangos*/
INSERT INTO Rango (ID, NombreRango) VALUES (1, 'Genin');
INSERT INTO Rango (ID, NombreRango) VALUES (2, 'Chunin');
INSERT INTO Rango (ID, NombreRango) VALUES (3, 'Jounin');
INSERT INTO Rango (ID, NombreRango) VALUES (4, 'Anbu');
INSERT INTO Rango (ID, NombreRango) VALUES (5, 'Kage');

/*Inserts Ninjas*/
INSERT INTO Ninja (Nombre, Rango, Aldea) VALUES ('Naruto Uzumaki', 5, 'Aldea de la Hoja');
INSERT INTO Ninja (Nombre, Rango, Aldea) VALUES ('Sasuke Uchiha', 4, 'Aldea de la Hoja');
INSERT INTO Ninja (Nombre, Rango, Aldea) VALUES ('Kakashi Hatake', 2, 'Aldea de la Hoja');
INSERT INTO Ninja (Nombre, Rango, Aldea) VALUES ('Sakura Haruno', 1, 'Aldea de la Hoja');
INSERT INTO Ninja (Nombre, Rango, Aldea) VALUES ('Itachi Uchiha', 3, 'Aldea de la Hoja'); 

/*Inserts Misiones*/
INSERT INTO Mision (Descripcion, Rango, Recompensa) VALUES ('Mision A', 1, 1000);
INSERT INTO Mision (Descripcion, Rango, Recompensa) VALUES ('Mision B', 2, 2000);
INSERT INTO Mision (Descripcion, Rango, Recompensa) VALUES ('Mision C', 3, 3000);
INSERT INTO Mision (Descripcion, Rango, Recompensa) VALUES ('Mision D', 4, 4000);
INSERT INTO Mision (Descripcion, Rango, Recompensa) VALUES ('Mision E', 5, 5000);

/*Inserts Habilidades*/
INSERT INTO Habilidad (ID_Ninja, Nombre, Descripcion) VALUES (1, 'Rasengan', 'Esfera espiral');
INSERT INTO Habilidad (ID_Ninja, Nombre, Descripcion) VALUES (2, 'Chidori', 'Mil pájaros');
INSERT INTO Habilidad (ID_Ninja, Nombre, Descripcion) VALUES (3, 'Sharingan', 'Mirada copiadora');
INSERT INTO Habilidad (ID_Ninja, Nombre, Descripcion) VALUES (4, 'Fuerza sobrehumana', 'Golpes devastadores');
INSERT INTO Habilidad (ID_Ninja, Nombre, Descripcion) VALUES (5, 'Amaterasu', 'Fuego negro inextinguible');


