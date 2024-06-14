CREATE DATABASE FabricaCerveza;
USE FabricaCerveza;

CREATE TABLE Categoria (
    ID_Categoria INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL
);

CREATE TABLE Tipo (
    ID_Tipo INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    ID_Categoria INT,
    FOREIGN KEY (ID_Categoria) REFERENCES Categoria(ID_Categoria)
);

CREATE TABLE MateriaPrima (
    ID_MateriaPrima INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL
);

CREATE TABLE Cerveza (
    ID_Cerveza INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    ID_Categoria INT,
    ID_Tipo INT,
    FOREIGN KEY (ID_Categoria) REFERENCES Categoria(ID_Categoria),
    FOREIGN KEY (ID_Tipo) REFERENCES Tipo(ID_Tipo)
);

CREATE TABLE CervezaMateriaPrima (
    ID_Cerveza INT,
    ID_MateriaPrima INT,
    PRIMARY KEY (ID_Cerveza, ID_MateriaPrima),
    FOREIGN KEY (ID_Cerveza) REFERENCES Cerveza(ID_Cerveza),
    FOREIGN KEY (ID_MateriaPrima) REFERENCES MateriaPrima(ID_MateriaPrima)
);

INSERT INTO Categoria (ID_Categoria, Nombre) VALUES (1, 'Lagers');
INSERT INTO Categoria (ID_Categoria, Nombre) VALUES (2, 'Ales');
INSERT INTO Categoria (ID_Categoria, Nombre) VALUES (3, 'Especiales');

INSERT INTO Tipo (ID_Tipo, Nombre, ID_Categoria) VALUES (1, 'Dark', 1);
INSERT INTO Tipo (ID_Tipo, Nombre, ID_Categoria) VALUES (2, 'Stouts', 2);
INSERT INTO Tipo (ID_Tipo, Nombre, ID_Categoria) VALUES (3, 'Bocks', 1);


INSERT INTO MateriaPrima (ID_MateriaPrima, Nombre) VALUES (1, 'Malta');
INSERT INTO MateriaPrima (ID_MateriaPrima, Nombre) VALUES (2, 'Lúpulo');
INSERT INTO MateriaPrima (ID_MateriaPrima, Nombre) VALUES (3, 'Levadura');


INSERT INTO Cerveza (ID_Cerveza, Nombre, ID_Categoria, ID_Tipo) VALUES (1, 'Cerveza Negra', 1, 1);
INSERT INTO Cerveza (ID_Cerveza, Nombre, ID_Categoria, ID_Tipo) VALUES (2, 'Cerveza Roja', 2, 2);
INSERT INTO Cerveza (ID_Cerveza, Nombre, ID_Categoria, ID_Tipo) VALUES (3, 'Cerveza Dorada', 1, 3);


INSERT INTO CervezaMateriaPrima (ID_Cerveza, ID_MateriaPrima) VALUES (1, 1);
INSERT INTO CervezaMateriaPrima (ID_Cerveza, ID_MateriaPrima) VALUES (1, 2);
INSERT INTO CervezaMateriaPrima (ID_Cerveza, ID_MateriaPrima) VALUES (2, 2);
INSERT INTO CervezaMateriaPrima (ID_Cerveza, ID_MateriaPrima) VALUES (2, 3);
INSERT INTO CervezaMateriaPrima (ID_Cerveza, ID_MateriaPrima) VALUES (3, 1);
INSERT INTO CervezaMateriaPrima (ID_Cerveza, ID_MateriaPrima) VALUES (3, 3);