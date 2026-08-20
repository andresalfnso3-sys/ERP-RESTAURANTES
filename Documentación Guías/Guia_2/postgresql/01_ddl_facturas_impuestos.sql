-- ============================================================
-- Fase 2 - Codigo base de clase
-- Base de datos: PostgreSQL (Neon.tech)
-- Descripcion: Esquema rigido de contabilidad. La factura es
-- la cabecera; registro_impuestos depende de ella mediante
-- llave foranea con borrado en cascada.
-- ============================================================

-- 1. Tabla de Facturas (Cabecera)
CREATE TABLE facturas (
    id_factura     SERIAL PRIMARY KEY,
    fecha_emision  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_venta    NUMERIC(10, 2) NOT NULL,
    metodo_pago    VARCHAR(50) CHECK (metodo_pago IN ('Efectivo', 'Tarjeta', 'Transferencia')),
    estado         VARCHAR(20) DEFAULT 'Pagada'
);

-- 2. Tabla de Impuestos (La exigencia de la DIAN)
CREATE TABLE registro_impuestos (
    id_impuesto     SERIAL PRIMARY KEY,
    id_factura      INT REFERENCES facturas(id_factura) ON DELETE CASCADE,
    tipo_impuesto   VARCHAR(20) NOT NULL,   -- Ej: IVA 19%, Impoconsumo 8%
    monto_impuesto  NUMERIC(10, 2) NOT NULL
);

-- ------------------------------------------------------------
-- Verificacion rapida:
-- SELECT * FROM facturas;
-- SELECT * FROM registro_impuestos;
-- \d facturas
-- \d registro_impuestos
-- ------------------------------------------------------------
