-- 1. Productos con el nombre de su categoría, ordenados por nombre (JOIN, ORDER BY).
SELECT p.nombre AS producto, c.nombre AS categoria
FROM productos p
JOIN categorias c ON p.categoria_id = c.id
ORDER BY p.nombre ASC;

-- 2. Productos con menos de 5 unidades en stock (WHERE).
SELECT nombre, stock 
FROM productos 
WHERE stock < 5;

-- 3. Precio promedio por categoría (GROUP BY, AVG).
SELECT c.nombre AS categoria, ROUND(AVG(p.precio), 2) AS precio_promedio
FROM productos p
JOIN categorias c ON p.categoria_id = c.id
GROUP BY c.nombre;

-- 4. Pedidos de un cliente con su fecha y estado (JOIN, WHERE).
-- Ejemplo buscando los pedidos de la cliente Ana Perez (id = 1)
SELECT c.nombre AS cliente, p.fecha, p.estado
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id
WHERE c.nombre = 'Ana Perez';

-- 5. Total en dinero de cada pedido (SUM, GROUP BY).
SELECT pedido_id, SUM(cantidad * precio_unitario) AS total_dinero
FROM detalle_pedido
GROUP BY pedido_id;

-- 6. Clientes con más de 2 pedidos (GROUP BY, HAVING).
SELECT c.nombre AS cliente, COUNT(p.id) AS cantidad_pedidos
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.id, c.nombre
HAVING COUNT(p.id) > 2;

-- 7. Eliminar un cliente sin pedidos (DELETE).
DELETE FROM clientes 
WHERE id NOT IN (SELECT DISTINCT cliente_id FROM pedidos);