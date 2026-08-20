-- ============================================================
-- Fase 2 - Reto 2: Integridad Relacional
-- Base de datos: PostgreSQL (Neon.tech)
-- Descripcion: Tabla de detalle que conecta con facturas
-- mediante llave foranea. codigo_sku_producto es VARCHAR (no
-- FK) porque ese dato vive en MongoDB: en persistencia
-- politiglota la integridad entre bases distintas se garantiza
-- por logica de aplicacion, no por el motor relacional.
-- ============================================================

CREATE TABLE detalle_factura (
    id_detalle           SERIAL PRIMARY KEY,
    id_factura           INT NOT NULL,
    codigo_sku_producto  VARCHAR(20) NOT NULL,   -- Viene de MongoDB (coleccion productos)
    nombre_producto      VARCHAR(100) NOT NULL,
    cantidad             INT NOT NULL,
    precio_unitario      NUMERIC(10, 2) NOT NULL,
    subtotal             NUMERIC(10, 2) NOT NULL,

    -- Llave foranea hacia la cabecera de la factura.
    -- ON DELETE CASCADE: si se anula la factura, se elimina
    -- automaticamente su detalle asociado.
    CONSTRAINT fk_detalle_factura
        FOREIGN KEY (id_factura)
        REFERENCES facturas(id_factura)
        ON DELETE CASCADE,

    -- Reglas de integridad a nivel de motor:
    CONSTRAINT chk_cantidad_positiva CHECK (cantidad > 0),
    CONSTRAINT chk_subtotal_valido   CHECK (subtotal = cantidad * precio_unitario)
);

-- Indice para acelerar los JOIN por id_factura (consulta muy
-- frecuente: "traer el detalle de una factura especifica").
CREATE INDEX idx_detalle_id_factura ON detalle_factura(id_factura);

-- ------------------------------------------------------------
-- Verificacion rapida:
-- \d detalle_factura
-- ------------------------------------------------------------
