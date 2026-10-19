-- Insertar 3 categorías
INSERT INTO categorias (nombre) VALUES 
('Electrónicos'), 
('Ropa'), 
('Hogar');

-- Insertar 12 productos (4 de cada categoría)
INSERT INTO productos (nombre, categoria_id, precio, stock) VALUES 
('Laptop Dell', 1, 850.00, 10),
('Smartphone Samsung', 1, 450.00, 15),
('Auriculares Sony', 1, 80.00, 4),
('Monitor LG 24"', 1, 150.00, 8),
('Camiseta Algodón', 2, 15.00, 50),
('Pantalón Jean', 2, 35.00, 30),
('Chaqueta Cuero', 2, 120.00, 2),
('Zapatillas Deportivas', 2, 60.00, 20),
('Licuadora Oster', 3, 40.00, 12),
('Microondas', 3, 90.00, 3),
('Juego de Sábanas', 3, 25.00, 18),
('Lámpara de Mesa', 3, 18.00, 25);

-- Insertar 6 clientes
INSERT INTO clientes (nombre, telefono, email) VALUES 
('Ana Perez', '71234567', 'ana@email.com'),
('Carlos Gomez', '78901234', 'carlos@email.com'),
('Maria Lopez', '73456789', 'maria@email.com'),
('Juan Diaz', '76543210', 'juan@email.com'),
('Laura Torres', '79876543', 'laura@email.com'),
('Pedro Ruiz', '70123456', 'pedro@email.com');

-- Insertar 10 pedidos
INSERT INTO pedidos (cliente_id, fecha, estado) VALUES 
(1, '2026-10-01', 'Completado'),
(1, '2026-10-05', 'En proceso'),
(2, '2026-10-02', 'Completado'),
(3, '2026-10-03', 'Completado'),
(3, '2026-10-08', 'Enviado'),
(4, '2026-10-04', 'Completado'),
(4, '2026-10-09', 'Completado'),
(5, '2026-10-06', 'Cancelado'),
(6, '2026-10-07', 'Completado'),
(1, '2026-10-10', 'Pendiente');

-- Insertar 25 líneas de detalle de pedido
INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES 
(1, 1, 1, 850.00), (1, 3, 2, 80.00), (1, 4, 1, 150.00), 
(2, 2, 1, 450.00), (2, 5, 3, 15.00),
(3, 6, 2, 35.00), (3, 7, 1, 120.00), (3, 8, 1, 60.00),
(4, 9, 1, 40.00), (4, 10, 1, 90.00), (4, 11, 2, 25.00), (4, 12, 1, 18.00),
(5, 1, 1, 850.00), (5, 8, 1, 60.00),
(6, 2, 2, 450.00), (6, 3, 1, 80.00), (6, 5, 2, 15.00),
(7, 4, 2, 150.00), (7, 12, 1, 18.00),
(8, 7, 1, 120.00), (8, 6, 1, 35.00),
(9, 9, 2, 40.00), (9, 11, 1, 25.00),
(10, 5, 4, 15.00), (10, 8, 1, 60.00);