-- ============================================================
-- Fase 2 - Reto 3: La Transaccion Exitosa
-- Base de datos: PostgreSQL (Neon.tech)
-- Descripcion: Inserta una factura, su detalle y su impuesto
-- de forma atomica, y confirma los cambios de forma permanente
-- con COMMIT. Usa currval() para encadenar el id_factura recien
-- generado sin tener que adivinarlo manualmente.
-- ============================================================

BEGIN;

-- Paso 1: Cabecera.
-- Total = subtotal (25.000) + Impoconsumo 8% (2.000) = 27.000
INSERT INTO facturas (total_venta, metodo_pago, estado)
VALUES (27000.00, 'Tarjeta', 'Pagada');

-- Paso 2: Detalle de lo vendido (el SKU viene de MongoDB).
-- currval() lee el ultimo valor generado por la secuencia
-- DENTRO DE ESTA MISMA SESION, por lo que es seguro incluso
-- con cajeros concurrentes.
INSERT INTO detalle_factura
    (id_factura, codigo_sku_producto, nombre_producto, cantidad, precio_unitario, subtotal)
VALUES
    (currval('facturas_id_factura_seq'), 'BGM-001', 'Hamburguesa Doble UMB', 1, 25000.00, 25000.00);

-- Paso 3: Impuesto exigido por la DIAN.
-- Nota: los restaurantes en Colombia son excluidos de IVA y
-- gravados con Impoconsumo (8%); no se cobran ambos sobre el
-- mismo plato.
INSERT INTO registro_impuestos (id_factura, tipo_impuesto, monto_impuesto)
VALUES (currval('facturas_id_factura_seq'), 'Impoconsumo 8%', 2000.00);

-- Persistir los cambios en disco de forma permanente.
COMMIT;

-- ------------------------------------------------------------
-- Verificacion: JOIN de las tres tablas para confirmar que
-- todo quedo correctamente enlazado.
-- ------------------------------------------------------------
SELECT f.id_factura, f.total_venta, f.metodo_pago,
       d.nombre_producto, d.cantidad, d.subtotal,
       i.tipo_impuesto, i.monto_impuesto
FROM facturas f
JOIN detalle_factura d    ON f.id_factura = d.id_factura
JOIN registro_impuestos i ON f.id_factura = i.id_factura;

-- Resultado esperado: 1 fila con la factura, su detalle y su
-- impuesto ya unidos.

-- ------------------------------------------------------------
-- Nota tecnica alternativa (para mencionar en la sustentacion):
-- en vez de currval(), se puede encadenar todo en un solo
-- statement usando un CTE con RETURNING, ej:
--
--   WITH nueva_factura AS (
--     INSERT INTO facturas (total_venta, metodo_pago, estado)
--     VALUES (27000.00, 'Tarjeta', 'Pagada')
--     RETURNING id_factura
--   )
--   INSERT INTO detalle_factura (id_factura, codigo_sku_producto, ...)
--   SELECT id_factura, 'BGM-001', ... FROM nueva_factura;
-- ------------------------------------------------------------
