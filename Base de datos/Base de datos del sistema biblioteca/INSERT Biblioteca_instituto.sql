-- poblando con información la base de datos
USE biblioteca_instituto;

INSERT INTO Editorial (nombre, pais) VALUES 
('Mario Vargas Llosa', 'perú'),
('Marta Aragón Urbina', 'Colombia'),
('Marcos José Marin', 'Uruguay'),
('Lidia Urbina Méndez', 'Nicaragua'),
('Sergio Cano', 'Argentina');

INSERT INTO Autor (nombre, apellido) VALUES
 ('Martin', 'Robleto'),
 ('Mateo', 'Tellez'),
 ('Roberto', 'González'),
 ('Francisco', 'Pérez'),
 ('Patry', 'Urbina');
 
 INSERT INTO Categoria (nombre, descripcion) VALUES 
('Historia', 'Libros historicos'),
('Novela', 'Novela con historia de amor'),
('Cuento', 'Cuento de personajes infantil'),
('Leyenda', 'Leyenda de terror'),
('Ficción', 'Narra la historia de jigantes');

INSERT INTO Usuario (nombre, apellido, nombre_usuario, correo, telefono, rol, contraseña) VALUES
('Francis', 'Ortega', 'francis012', 'francis145@gmali.com', '1245-2356', 'Bibliotecario', '21ñ1*45'),
('Santos', 'Pérez', 'santosp24', 'perezs123@gmail.com', '4578-9685', 'Administrador', 'admi122ñ*'),
('Maria', 'Marin', 'maria@12', 'mariamarin4@gmail.com', '2580-8621', 'Bibliotecario', 'biblio*1245'),
('Juan', 'Martinez', 'juan1245', 'marninezjuan@gmail.com', '7898-2356', 'Bibliotecario', '124ñ*45/er'),
('Miguel', 'Reyes', 'miguelr78', 'miguel412@gmail.com', '8956-7963', 'Bibliotecario', '45*-1dfr/');

INSERT INTO Estudiante (nombre, apellido, telefono, grado, seccion) VALUES
('Karla', 'Garcia', '5641-2384', '11mo', 'A1'),
('Jostin', 'Amador', '88541028', '8vo', 'A2'),
('Jenier', 'Sequeira', '7845-6594', '7mo', 'B1'),
('Pedro', 'Alemán', '7845-5689', '11mo', 'A1'),
('Josefa', 'Amador', '45612-2356', '7mo', 'B1');

INSERT INTO Libro (titulo, anio_publicacion, disponibilidad, ubicacion, id_editorial, id_categoria)
VALUES ('La ciudad y los perros', 1998, 8, 'Estanteria 1', 1, 3),
('El perro del ciego', 1999, 5, 'Estanteria 1', 1, 2),
('La carreta naugua', 1996, 7, 'Estanteria 2', 3, 4),
('Amor verdadero', 2008, 3, 'Estanteria 4', 5, 2),
('El bosque encantado', 2006, 2, 'Estanteria 3', 4, 5);

INSERT INTO Autor_Libro (id_autor, id_libro) VALUES
(1, 7),
(2, 9),
(3, 10), 
(4, 6), 
(5, 8);

INSERT INTO Prestamo (fecha_prestamo, fecha_limite, id_estudiante) VALUES 
('2026/02/11', '2026/02/22', 2),
('2026/04/08', '2026/04/30', 5),
('2026/04/10', '2026/04/20', 1),
('2026/08/03', '2026/08/15', 4),
('2026/08/11', '2026/08/25', 2);

INSERT INTO Prestamo_Libro (id_prestamo, id_libro, cantidad, fecha_devolucion, estado) VALUES
(1, 6, 2, '2026/02/25', 'Prestado'),
(2, 8, 3, '2026/05/02', 'Dañado'),
(5, 10, 1, '2026/08/30', 'Disponible'),
(4, 7, 2, '2026/04/28', 'Prestado'),
(3, 9, 3, '2026/04/20', 'Prestado');