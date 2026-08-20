-- ============================================================
-- Fase 2 - Demostracion de Atomicidad (la "A" de ACID)
-- Base de datos: PostgreSQL (Neon.tech)
-- Descripcion: Simula un fallo real de captura de datos
-- (texto en un campo numerico) para demostrar que Postgres
-- revierte TODA la transaccion, no solo la sentencia fallida.
-- ============================================================

-- INICIO DE LA TRANSACCION
BEGIN;

-- Paso 1: Registramos la factura de la Hamburguesa ($25.000)
-- Esta sentencia SI se ejecuta correctamente dentro de la
-- transaccion (aun no esta confirmada en disco).
INSERT INTO facturas (total_venta, metodo_pago)
VALUES (25000.00, 'Tarjeta');

-- Paso 2: Intentamos registrar el impuesto (Fallo intencional)
-- Forzamos un error insertando texto en un campo numerico.
INSERT INTO registro_impuestos (id_factura, tipo_impuesto, monto_impuesto)
VALUES (1, 'Impoconsumo 8%', 'ERROR_DE_CALCULO');

-- El motor de PostgreSQL lanza el error:
--   ERROR: invalid input syntax for type numeric: "ERROR_DE_CALCULO"
-- A partir de aqui la transaccion queda marcada como fallida
-- ("current transaction is aborted") y Postgres exige un
-- ROLLBACK explicito antes de aceptar cualquier otra sentencia.

ROLLBACK;

-- ------------------------------------------------------------
-- Verificacion (correr DESPUES del ROLLBACK, en una sesion
-- limpia):
--
--   SELECT * FROM facturas;
--
-- Resultado esperado: 0 filas. La factura de $25.000 NUNCA
-- quedo guardada, pese a que el Paso 1 "parecia" exitoso.
-- Esto es Atomicidad: o se guarda todo, o no se guarda nada.
-- ------------------------------------------------------------
