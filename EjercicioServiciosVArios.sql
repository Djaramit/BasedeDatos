Create DataBase EscuelaServiciosVarios;
USE DataBase EscuelaServiciosVarios;

Create Table curso (id AUTO_INCREMENT INT PRIMARY KEY, 
                    nombre VARCHAR(30) NOT NULL,
                    descripcion VARCHAR (200));


Create Table profesor (id AUTO_INCREMENT INT PRIMARY KEY, 
                       nombre VARCHAR(30) NOT NULL,
                       departamento VARCHAR (30) NOT NULL);


Create Table estudiante (id AUTO_INCREMENT INT PRIMARY KEY, 
                         nombre VARCHAR(30) NOT NULL,
                         correo VARCHAR (50),
                         id_curso INT,
                         FOREIGN KEY (id_curso) REFERENCES curso(id));


Create Table perfil (id AUTO_INCREMENT INT PRIMARY KEY, 
                     biografia VARCHAR(200) NOT NULL,
                     id_estudiante INT,
                     FOREIGN KEY (id_estudiante) REFERENCES estudiante(id));


Create Table curso_asignado (id_curso INT,
                             id_profesor INT,
                             FOREIGN KEY (id_curso) REFERENCES curso(id)
                             FOREIGN KEY (id_profesor) REFERENCES profesor(id));


Insert into curso values ('Introduccion Oficios Varios', 'Introduccion Oficios Varios')
Insert into profesor values ('Juan Carlos Gomez', 'Matemáticas')
Insert into estudiante values ('Andres Bernal', 'andres@andres.com', 1)
Insert into perfil values ('Experto en el area de matematicas', 1)                         