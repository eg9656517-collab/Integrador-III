-- Eliminar y actualizar datos de la base de datos

USE biblioteca_instituto;

UPDATE Editorial SET pais='Costa Rica' WHERE id_editorial=2;
DELETE FROM Editorial WHERE id_editorial=3;

UPDATE Categoria SET nombre='Ciencia ficción' WHERE id_categoria=5;

UPDATE Libro SET ubicacion='Estanteria 6' WHERE id_libro=6;

DELETE FROM Prestamo WHERE id_prestamo=2;
