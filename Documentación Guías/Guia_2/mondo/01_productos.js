// ============================================================
// Fase 2 - Persistencia Politiglota
// Base de datos: erp_restaurante
// Coleccion: productos
// Descripcion: Documento maestro del catalogo. Modela una
// hamburguesa con receta de insumos (para descuento en
// Inventario) y opciones de personalizacion dinamicas.
// ============================================================

use erp_restaurante

db.productos.insertOne({
  "codigo_sku": "BGM-001",
  "nombre": "Hamburguesa Doble UMB",
  "categoria": "Platos Fuertes",
  "precio_venta": 25000,
  "disponible": true,

  // Arreglo de sub-documentos: lo que el Microservicio de Ventas
  // envia al Microservicio de Inventario para dar de baja stock.
  "receta_insumos": [
    { "ingrediente": "Pan Brioche",   "cantidad": 1,   "unidad": "unidad", "id_bodega": "INS-010" },
    { "ingrediente": "Carne de Res",  "cantidad": 300, "unidad": "gramos", "id_bodega": "INS-022" },
    { "ingrediente": "Queso Cheddar", "cantidad": 2,   "unidad": "tajada", "id_bodega": "INS-005" }
  ],

  // Arreglo dinamico: no todos los productos lo necesitan
  // (ej. una gaseosa no tendria este campo). Ventaja de
  // schema-less en MongoDB.
  "opciones_personalizacion": [
    { "tipo": "Termino Carne", "opciones": ["Medio", "Tres Cuartos", "Bien Asado"] },
    { "tipo": "Adiciones",     "opciones": ["Tocineta", "Huevo", "Salsa Xcrump"] }
  ],

  "metadatos": {
    "fecha_creacion": new Date(),
    "creado_por": "Chef Ejecutivo"
  }
});

// ------------------------------------------------------------
// Verificacion rapida:
// db.productos.find({ codigo_sku: "BGM-001" }).pretty();
// ------------------------------------------------------------
