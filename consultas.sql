-- 1. Consultar todos los libros disponibles y su cantidad de copias
-- Esta consulta verifica qué libros están listos para ser prestados.
SELECT titulo, isbn, genero, cantidad_copias 
FROM Libros 
WHERE estado = 'disponible' AND cantidad_copias > 0;

-- 2. Consultar el historial de préstamos de un usuario específico usando su email
-- Esta consulta cruza las tablas Prestamos, Usuarios y Libros para ver qué ha pedido prestado un usuario.
SELECT u.nombre AS usuario, l.titulo AS libro_prestado, p.fecha_prestamo, p.fecha_devolucion 
FROM Prestamos p
JOIN Usuarios u ON p.id_usuario = u.id_usuario
JOIN Libros l ON p.id_libro = l.id_libro
WHERE u.email = 'usuario@ejemplo.com'; 

-- 3. Consultar las reseñas de un libro en particular con la calificación y el comentario
-- Esta consulta permite ver el feedback que ha recibido un libro específico buscando por su ISBN.
SELECT l.titulo, u.nombre AS revisor, r.calificacion, r.comentario, r.fecha
FROM Resenas r
JOIN Libros l ON r.id_libro = l.id_libro
JOIN Usuarios u ON r.id_usuario = u.id_usuario
WHERE l.isbn = '123-456-789';
