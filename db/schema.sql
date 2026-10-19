-- Tabla: categorias
CREATE TABLE categorias (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) UNIQUE NOT NULL
);

-- Tabla: productos
CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    categoria_id INTEGER NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    stock INTEGER NOT NULL,
    CONSTRAINT fk_categoria FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

-- Tabla: clientes
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Tabla: pedidos
CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    cliente_id INTEGER NOT NULL,
    fecha DATE NOT NULL,
    estado VARCHAR(50) NOT NULL,
    CONSTRAINT fk_cliente FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Tabla: detalle_pedido
CREATE TABLE detalle_pedido (
    id SERIAL PRIMARY KEY,
    pedido_id INTEGER NOT NULL,
    producto_id INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_pedido FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    CONSTRAINT fk_producto FOREIGN KEY (producto_id) REFERENCES productos(id)
);