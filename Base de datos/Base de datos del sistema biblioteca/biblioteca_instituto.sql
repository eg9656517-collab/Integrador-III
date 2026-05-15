-- Base de datos del sistema bibliotecario
CREATE DATABASE biblioteca_instituto;
USE biblioteca_instituto;

-- Tabla Editorial
CREATE TABLE Editorial (
id_editorial INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
pais VARCHAR(50)
);

-- Tabla Autores
CREATE TABLE Autor (
id_autor INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL
);
-- RENAME TABLE Autores TO Autor
-- ALTER TABLE Autor CHANGE id_autores id_autor INT AUTO_INCREMENT;

-- Tabla categoria
CREATE TABLE Categoria (
id_categoria INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
descripcion VARCHAR(255)
);

-- Tabla Usuario (login)
CREATE TABLE Usuario (
id_usuario INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(150) NOT NULL,
apellido VARCHAR(100) NOT NULL,
nombre_usuario VARCHAR(50) NOT NULL,
correo VARCHAR(250) NOT NULL,
telefono VARCHAR(15) NOT NULL,
rol VARCHAR(20) NOT NULL,
contraseña VARCHAR(25) NOT NULL
);
-- ALTER TABLE Usuario
-- CHANGE COLUMN nombre_completo nombre VARCHAR(150);
-- ALTER TABLE Usuario
-- ADD COLUMN apellido VARCHAR(100) AFTER nombre;

-- Tabla Estudiante
CREATE TABLE Estudiante (
id_Estudiante INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
apellido VARCHAR(100) NOT NULL,
telefono VARCHAR(15),
grado VARCHAR(15) NOT NULL,
seccion VARCHAR(5) NOT NULL
);

-- Tabla Libro
CREATE TABLE Libro (
id_libro INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(150) NOT NULL,
anio_publicacion YEAR,
disponibilidad INT NOT NULL,
ubicacion VARCHAR(50) NOT NULL,
id_editorial INT,
id_categoria INT,
FOREIGN KEY (id_editorial) REFERENCES Editorial(id_editorial)
ON DELETE SET NULL
ON UPDATE CASCADE,
FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
ON DELETE SET NULL
ON UPDATE CASCADE
);
-- ALTER TABLE Libro 
-- DROP FOREIGN KEY libro_ibfk_1;
-- SET foreign_key_checks = 0;
-- ALTER TABLE libro DROP COLUMN id_autor;
-- SET foreign_key_checks = 1;

-- Tabla intermedia Autores_Libro (muchos a muchos)
CREATE TABLE Autor_Libro (
id_autor INT,
id_libro INT,
PRIMARY KEY (id_autor, id_libro),
FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (id_libro) REFERENCES Libro(id_libro)
ON DELETE CASCADE 
ON UPDATE CASCADE
);

-- Tabla prestamo
CREATE TABLE Prestamo (
id_prestamo INT AUTO_INCREMENT PRIMARY KEY,
fecha_prestamo DATE DEFAULT (CURRENT_DATE),
fecha_limite DATE,
id_estudiante INT,
FOREIGN KEY (id_estudiante) REFERENCES Estudiante(id_estudiante)
ON DELETE RESTRICT 
ON UPDATE CASCADE
);
-- ALTER TABLE Prestamo
-- DROP FOREIGN KEY prestamo_ibfk_1; 
-- SET foreign_key_checks = 0;
-- ALTER TABLE Prestamo DROP COLUMN id_libro;
-- SET foreign_key_checks = 1;

-- Tabla intermedia Prestamo_Libro (muchos a muchos)
CREATE TABLE Prestamo_Libro (
id_prestamo INT,
id_libro INT,
cantidad INT NOT NULL,
fecha_devolucion DATE NOT NULL,
estado VARCHAR(100) NOT NULL,
PRIMARY KEY (id_prestamo, id_libro),
FOREIGN KEY (id_prestamo) REFERENCES Prestamo(id_prestamo)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (id_libro) REFERENCES Libro(id_libro)
ON DELETE CASCADE
ON UPDATE CASCADE
);
