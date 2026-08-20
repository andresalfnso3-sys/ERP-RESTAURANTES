// ============================================================
// Fase 2 - Reto 1: Query de caducidad
// Base de datos: erp_restaurante
// Coleccion: bodega
// Descripcion: Encuentra todos los insumos cuya fecha_vencimiento
// cae dentro de los proximos 7 dias a partir de "ahora", y los
// ordena del mas urgente al menos urgente.
// ============================================================

use erp_restaurante

db.bodega.find({
  "fecha_vencimiento": {
    // $gte: new Date() excluye lo que YA vencio (eso es merma,
    // no alerta de rotacion).
    $gte: new Date(),

    // Limite superior: ahora + 7 dias en milisegundos.
    $lte: new Date(new Date().getTime() + (7 * 24 * 60 * 60 * 1000))
  }
}).sort({ "fecha_vencimiento": 1 }); // ascendente: lo mas urgente primero

// ------------------------------------------------------------
// Resultado esperado con los datos de 02_bodega.js (evaluado
// el 20-ago-2026): devuelve 3 documentos en este orden:
//   1. Lechuga Crespa   (vence 2026-08-21)
//   2. Pan Brioche      (vence 2026-08-22)
//   3. Carne de Res     (vence 2026-08-24)
// Queso Cheddar (vence 2026-09-15) queda excluido por estar
// fuera del rango de 7 dias.
// ------------------------------------------------------------
