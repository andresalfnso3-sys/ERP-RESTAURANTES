// ============================================================
// Fase 2 - Reto 1: Profundizando en NoSQL (Inventario)
// Base de datos: erp_restaurante
// Coleccion: bodega
// Descripcion: Documentos de insumos con proveedores_aprobados
// (arreglo de sub-documentos) y fecha_vencimiento, para poder
// consultar alertas de caducidad. El id_bodega conecta
// directamente con receta_insumos en la coleccion productos.
// ============================================================

use erp_restaurante

db.bodega.insertMany([
  {
    "id_bodega": "INS-022",
    "nombre_insumo": "Carne de Res",
    "categoria": "Proteínas",
    "unidad_medida": "gramos",
    "stock_actual": 15000,
    "punto_reorden": 3000,
    "estado_semaforo": "Verde",
    "fecha_vencimiento": new Date("2026-08-24"),
    "lote": {
      "numero_lote": "LT-2026-0814",
      "fecha_ingreso": new Date("2026-08-14"),
      "temperatura_almacenamiento": "-18C",
      "costo_unitario_gramo": 32.5
    },
    "proveedores_aprobados": [
      { "nombre": "Carnes del Llano S.A.S",   "nit": "900123456-7", "telefono": "+57 601 7451200", "contacto": "María Rodríguez", "calificacion": 4.8 },
      { "nombre": "Frigorífico Andino Ltda",  "nit": "830998877-1", "telefono": "+57 310 5567890", "contacto": "Julián Pérez",    "calificacion": 4.2 }
    ],
    "metadatos": { "registrado_por": "Bodeguero Turno AM", "fecha_registro": new Date() }
  },
  {
    "id_bodega": "INS-010",
    "nombre_insumo": "Pan Brioche",
    "categoria": "Panadería",
    "unidad_medida": "unidad",
    "stock_actual": 200,
    "punto_reorden": 50,
    "estado_semaforo": "Amarillo",
    "fecha_vencimiento": new Date("2026-08-22"),
    "lote": {
      "numero_lote": "LT-2026-0818",
      "fecha_ingreso": new Date("2026-08-18"),
      "temperatura_almacenamiento": "Ambiente",
      "costo_unitario_gramo": 850
    },
    "proveedores_aprobados": [
      { "nombre": "Panadería La Espiga Dorada", "nit": "901234567-2", "telefono": "+57 315 4432211", "contacto": "Camila Torres", "calificacion": 4.9 }
    ],
    "metadatos": { "registrado_por": "Bodeguero Turno AM", "fecha_registro": new Date() }
  },
  {
    "id_bodega": "INS-005",
    "nombre_insumo": "Queso Cheddar",
    "categoria": "Lácteos",
    "unidad_medida": "tajada",
    "stock_actual": 500,
    "punto_reorden": 100,
    "estado_semaforo": "Verde",
    "fecha_vencimiento": new Date("2026-09-15"),
    "lote": {
      "numero_lote": "LT-2026-0810",
      "fecha_ingreso": new Date("2026-08-10"),
      "temperatura_almacenamiento": "4C",
      "costo_unitario_gramo": 210
    },
    "proveedores_aprobados": [
      { "nombre": "Lácteos Sabana S.A.S", "nit": "890555444-3", "telefono": "+57 320 8890011", "contacto": "Andrés Gómez", "calificacion": 4.5 }
    ],
    "metadatos": { "registrado_por": "Bodeguero Turno PM", "fecha_registro": new Date() }
  },
  {
    "id_bodega": "INS-030",
    "nombre_insumo": "Lechuga Crespa",
    "categoria": "Vegetales",
    "unidad_medida": "unidad",
    "stock_actual": 40,
    "punto_reorden": 20,
    "estado_semaforo": "Rojo",
    "fecha_vencimiento": new Date("2026-08-21"),
    "lote": {
      "numero_lote": "LT-2026-0819",
      "fecha_ingreso": new Date("2026-08-19"),
      "temperatura_almacenamiento": "4C",
      "costo_unitario_gramo": 1200
    },
    "proveedores_aprobados": [
      { "nombre": "Verduras Frescas del Campo", "nit": "812345678-9", "telefono": "+57 300 1122334", "contacto": "Laura Méndez", "calificacion": 4.3 }
    ],
    "metadatos": { "registrado_por": "Bodeguero Turno PM", "fecha_registro": new Date() }
  }
]);

// ------------------------------------------------------------
// Verificacion rapida:
// db.bodega.find().pretty();
// db.bodega.countDocuments();  // deberia devolver 4
// ------------------------------------------------------------
