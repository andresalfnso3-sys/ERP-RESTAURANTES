---
title: ERP Integral de Restaurante
---

# ERP Integral de Restaurante — Food Costing, CRM y Reservas

Página de documentación del proyecto — Ingeniería de Software, Arquitectura de Software (UMB).

## Descripción del proyecto

Sistema ERP integral para restaurantes que, sobre la base operativa habitual (inventario/almacén,
compras a proveedores, facturación/ventas POS y RRHH), agrega dos capas que se retroalimentan
entre sí:

- **Food Costing**: cada plato del menú tiene una ficha técnica que descuenta automáticamente los
  insumos exactos del inventario al momento de la venta, calcula el costo real de cada plato y
  alerta cuando el margen de ganancia cae por variación de precios de proveedores.
- **CRM/Clientes**: reservas de mesas, historial de pedidos, fidelización y encuestas de
  satisfacción.

El sistema cruza ambos módulos para sugerir promociones inteligentes — por ejemplo, impulsar un
plato de buen margen entre los clientes fieles, o ajustar el menú del día según los insumos con
mejor costo disponible en inventario.

## Módulos del sistema

1. Inventario / Almacén
2. Compras / Proveedores
3. Facturación / Ventas (POS)
4. RRHH (turnos, nómina básica)
5. Food Costing (fichas técnicas, costo por receta, alertas de margen)
6. CRM / Clientes (reservas, fidelización, historial, encuestas)

## Equipo

| Integrante | Rol / parte asignada |
|---|---|
| Juan Sebastian Rubio Gonzales | [ej. Definición del problema, Solución ofrecida] |
| David Alejandro García Lozano | [ej. Justificación, Usuario final, Utilidad] |
| Diego Alejandro Lopez Castillo | [ej. Antecedentes, Requisitos funcionales, Alcance] |
| Julian Andres Peñuela Alfonso | Requisitos no funcionales, Tecnologías seleccionadas, Repositorio |

## C. Requisitos no funcionales

> _Pega aquí el contenido que ya tienes redactado para este punto._

## D. Alcance del sistema

> _Pendiente — la persona encargada debe completarlo._

## E. Tecnologías seleccionadas

| Capa | Tecnología | Función |
|---|---|---|
| IDE | Microsoft Visual Studio 2022 | Requerido por el docente |
| Lenguaje / entorno de ejecución | C# sobre .NET 8 (LTS) | Un solo lenguaje en toda la solución |
| Backend | ASP.NET Core Web API | Expone los 6 módulos (Inventario, Compras, POS, RRHH, Food Costing, CRM) |
| Frontend | Blazor (Server o WebAssembly) | Aplicación web única usada por el personal (POS, cocina, administración) desde el navegador y por los clientes (reservas, encuestas) desde una página pública; sin cliente de escritorio ni JavaScript |
| Librería de componentes UI | MudBlazor | Formularios, tablas, gráficos y diseño responsivo ya construidos |
| Base de datos | Microsoft SQL Server Express / LocalDB | Lógica relacional para el descuento de insumos por receta, historial de precios y reservas; edición gratuita incluida con Visual Studio |
| ORM | Entity Framework Core (Code-First + Migrations) | Esquema de base de datos versionado junto con el código |
| Autenticación y roles | ASP.NET Core Identity + JWT | Acceso basado en roles (administrador, gerente, mesero, cocina, cajero) frente a usuarios públicos/clientes |
| Actualizaciones en tiempo real | SignalR | Comandas de cocina, estado de mesas y alertas de bajo stock o margen en vivo |
| Tareas programadas / en segundo plano | Hangfire | Recalcula márgenes al cambiar precios de proveedores y envía encuestas de satisfacción después de la visita del cliente |
| Generación de documentos PDF | QuestPDF | Impresión de facturas/comandas y exportación de fichas técnicas de receta |
| Notificaciones por correo | MailKit | Confirmación de reservas y envío de encuestas de satisfacción al cliente |
| Reportes / gráficos | LiveCharts2 | Paneles de margen de food costing e indicadores de CRM |
| Documentación de API | Swagger / Swashbuckle | Documenta y prueba automáticamente los endpoints de la Web API |
| Registro de logs | Serilog | Trazabilidad y depuración de errores en producción |
| Pruebas | xUnit / NUnit + Moq | Pruebas unitarias dentro de Visual Studio |
| Hosting (demostración) | IIS Express (local) o Azure App Service | Ejecuta la solución Blazor + API |
| Control de versiones | Git + GitHub | Repositorio de este proyecto |

## Enlaces

- Repositorio: `https://github.com/andresalfnso3-sys/ERP-RESTAURANTES`
