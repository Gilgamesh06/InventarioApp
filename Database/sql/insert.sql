
-- 1. Insertar Proveedores 

INSERT INTO "Proveedor" (nit, nombre)
VALUES
('800123456', 'Textiles Ropa SA'),
('900654321', 'Distribuidora Moda'),
('850789012', 'Fashion Supplies'),
('870123987', 'Estilo y Más');

-- 2. Insertar Productos 

INSERT INTO "Producto" (codigo, talla, nombre, tipo, valor_unid, valor_venta)
VALUES
('P001', 'S', 'Camiseta Básica', 'Camisetas', 10.00, 20.00),
('P002', 'M', 'Camiseta Básica', 'Camisetas', 10.00, 20.00),
('P003', 'L', 'Camiseta Básica', 'Camisetas', 10.00, 20.00),
('P004', 'M', 'Pantalón Casual', 'Pantalones', 15.00, 30.00),
('P005', 'L', 'Pantalón Casual', 'Pantalones', 15.00, 30.00),
('P006', 'XL', 'Pantalón Casual', 'Pantalones', 15.00, 30.00),
('P007', 'S', 'Camiseta Deportiva', 'Camisetas', 12.00, 25.00),
('P008', 'M', 'Camiseta Deportiva', 'Camisetas', 12.00, 25.00),
('P009', 'L', 'Camiseta Deportiva', 'Camisetas', 12.00, 25.00),
('P010', 'M', 'Pantalón Formal', 'Pantalones', 20.00, 40.00),
('P011', 'L', 'Pantalón Formal', 'Pantalones', 20.00, 40.00),
('P012', 'XL', 'Sudadera Completa', 'Sudaderas', 30.00, 60.00),
('P013', 'S', 'Chaqueta Liviana', 'Chaquetas', 25.00, 50.00),
('P014', 'M', 'Chaqueta Liviana', 'Chaquetas', 25.00, 50.00),
('P015', 'L', 'Chaqueta Liviana', 'Chaquetas', 25.00, 50.00),
('P016', 'S', 'Vestido Elegante', 'Vestidos', 40.00, 80.00),
('P017', 'M', 'Vestido Elegante', 'Vestidos', 40.00, 80.00),
('P018', 'L', 'Vestido Elegante', 'Vestidos', 40.00, 80.00),
('P019', 'S', 'Jeans Clásicos', 'Pantalones', 18.00, 36.00),
('P020', 'M', 'Jeans Clásicos', 'Pantalones', 18.00, 36.00),
('P021', 'L', 'Jeans Clásicos', 'Pantalones', 18.00, 36.00),
('P022', 'S', 'Camisa de Vestir', 'Camisas', 28.00, 56.00),
('P023', 'M', 'Camisa de Vestir', 'Camisas', 28.00, 56.00),
('P024', 'L', 'Camisa de Vestir', 'Camisas', 28.00, 56.00),
('P025', 'M', 'Abrigo Largo', 'Chaquetas', 35.00, 70.00),
('P026', 'L', 'Abrigo Largo', 'Chaquetas', 35.00, 70.00),
('P027', 'S', 'Falda Formal', 'Faldas', 24.00, 48.00),
('P028', 'M', 'Falda Formal', 'Faldas', 24.00, 48.00),
('P029', 'L', 'Falda Formal', 'Faldas', 24.00, 48.00),
('P030', 'XL', 'Abrigo de Invierno', 'Chaquetas', 40.00, 80.00);

-- 3. Insertar Relaciones ProveedorProducto 

INSERT INTO "ProveedorProducto" (proveedor_id, producto_id)
VALUES
(1, 1), (1, 2), (1, 3), (2, 4), (2, 5), (2, 6), 
(3, 7), (3, 8), (3, 9), (4, 10), (4, 11), (4, 12), 
(1, 13), (2, 14), (2, 15), (3, 16), (4, 17), (4, 18), 
(1, 19), (1, 20), (2, 21), (3, 22), (4, 23), (4, 24),
(1, 25), (2, 26), (3, 27), (4, 28), (4, 29), (2, 30);

-- 4. Insertar Inventario 

INSERT INTO "Inventario" (producto_id, cantidad)
VALUES
(1, 100), (2, 120), (3, 110), (4, 90), (5, 80), 
(6, 70), (7, 130), (8, 85), (9, 95), (10, 105), 
(11, 75), (12, 65), (13, 50), (14, 120), (15, 150),
(16, 60), (17, 55), (18, 45), (19, 100), (20, 85),
(21, 95), (22, 105), (23, 75), (24, 65), (25, 50),
(26, 120), (27, 90), (28, 70), (29, 60), (30, 55);

-- 5. Insertar Mermas 

INSERT INTO "Merma" (descripcion)
VALUES
('Ropa dañada durante transporte'),
('Producto defectuoso en fábrica'),
('Prenda manchada durante almacenamiento'),
('Ropa extraviada en inventario');

-- 6. Insertar Relaciones MermaProducto 

INSERT INTO "MermaProducto" (merma_id, producto_id, cantidad)
VALUES
(1, 3, 5), (1, 8, 3), (2, 11, 2), (2, 13, 4), 
(3, 17, 6), (3, 20, 7), (4, 22, 3), (4, 27, 2), 
(4, 30, 5);

-- 7. Actualizar Inventario tras las Mermas

UPDATE "Inventario"
SET cantidad = cantidad - 5
WHERE producto_id = 3;

UPDATE "Inventario"
SET cantidad = cantidad - 3
WHERE producto_id = 8;

UPDATE "Inventario"
SET cantidad = cantidad - 2
WHERE producto_id = 11;

UPDATE "Inventario"
SET cantidad = cantidad - 4
WHERE producto_id = 13;

UPDATE "Inventario"
SET cantidad = cantidad - 6
WHERE producto_id = 17;

UPDATE "Inventario"
SET cantidad = cantidad - 7
WHERE producto_id = 20;

UPDATE "Inventario"
SET cantidad = cantidad - 3
WHERE producto_id = 22;

UPDATE "Inventario"
SET cantidad = cantidad - 2
WHERE producto_id = 27;

UPDATE "Inventario"
SET cantidad = cantidad - 5
WHERE producto_id = 30;