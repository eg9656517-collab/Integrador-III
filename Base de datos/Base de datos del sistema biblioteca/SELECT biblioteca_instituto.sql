-- Realizar consultas a la base de datos

USE biblioteca_instituto;

SELECT * FROM Editorial;

SELECT * FROM Autor;

SELECT nombre, descripcion FROM Categoria;
SELECT * FROM Categoria;

SELECT nombre, contraseña FROM usuario ORDER BY nombre ASC;
SELECT id_usuario, rol FROM Usuario;
SELECT * FROM Usuario;

SELECT nombre, apellido FROM Estudiante WHERE grado = '11mo' AND seccion = 'A1';
SELECT nombre, grado FROM Estudiante WHERE grado IN ('7mo', '8vo');
SELECT nombre, telefono FROM Estudiante;
SELECT COUNT(*) AS total_B1 FROM Estudiante WHERE seccion = 'B1';
SELECT * FROM Estudiante;

SELECT titulo, anio_publicacion FROM libro WHERE id_libro=8;
SELECT COUNT(*) AS total_libros FROM Libro;
SELECT l.titulo, e.nombre AS editorial, c.nombre AS categoria
FROM libro l
INNER JOIN editorial e ON l.id_editorial = e.id_editorial
INNER JOIN categoria c ON l.id_categoria = c.id_categoria;
SELECT titulo, ubicacion FROM Libro ORDER BY ubicacion ASC;
SELECT * FROM Libro; 

SELECT * FROM Autor_Libro;

SELECT p.id_prestamo, CONCAT(e.nombre, ' ', e.apellido) AS estudiante_completo, 
l.titulo AS libro_prestado, p.fecha_prestamo FROM Prestamo p
INNER JOIN Estudiante e ON p.id_estudiante = e.id_estudiante
INNER JOIN Prestamo_Libro pl ON p.id_prestamo = pl.id_prestamo
INNER JOIN Libro l ON pl.id_libro = l.id_libro;
SELECT * FROM Prestamo;

SELECT * FROM Prestamo_Libro;
