
CREATE TABLE "Proveedor"(
    id SERIAL PRIMARY KEY,
    nit VARCHAR(12) NOT NULL UNIQUE,
    nombre VARCHAR(50) NOT NULL

);

CREATE TABLE "Producto"(
    id SERIAL PRIMARY KEY,
    codigo VARCHAR(12) NOT NULL UNIQUE,
    talla VARCHAR(5) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    tipo VARCHAR(100) NOT NULL,
    valor_unid REAL NOT NULL,
    valor_venta REAL NOT NULL
);

CREATE TABLE "ProveedorProducto"(
    proveedor_id INT,
    producto_id INT,
    PRIMARY KEY(proveedor_id,producto_id),

    CONSTRAINT fk_proveedor FOREIGN KEY (proveedor_id) REFERENCES "Proveedor"(id),
    CONSTRAINT fk_producto FOREIGN KEY (producto_id) REFERENCES "Producto"(id)
);

CREATE TABLE "Merma"(
    id SERIAL PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL,
    fecha DATE DEFAULT CURRENT_DATE
);

CREATE TABLE "MermaProducto"(
    merma_id INT,
    producto_id INT NOT NULL,
    cantidad INT,
    PRIMARY KEY(merma_id,producto_id),

    CONSTRAINT fk_merma FOREIGN KEY (merma_id) REFERENCES "Merma"(id),
    CONSTRAINT fk_producto FOREIGN KEY (producto_id) REFERENCES "Producto"(id)
);


CREATE TABLE "Inventario"(
    producto_id INT UNIQUE REFERENCES "Producto"(id),
    cantidad INT NOT NULL,
    fecha DATE DEFAULT CURRENT_DATE

);