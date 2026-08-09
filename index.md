---
title: ERP Integral de Restaurante
---

# ERP Integral de Restaurante — Food Costing, CRM y Reservas

**Universidad Manuela Beltrán** — Ingeniería de Software — Arquitectura de Software
Bogotá, 2026

**Equipo:**
David Alejandro García Lozano · Diego Alejandro López Castillo · Juan Sebastián Rubio Gonzales · Julian Andrés Peñuela Alfonso · Carlos Eduardo Mujica Reyes

---

## 1. Contexto y evaluación del proyecto

### 1.1 Contexto del proyecto

El proyecto se enfoca en el desarrollo de un ERP integral para un restaurante pequeño o mediano que ofrece atención en mesa y gestiona diferentes procesos operativos, administrativos y comerciales.

Actualmente, un restaurante debe coordinar actividades como el control de inventario, las compras a proveedores, las ventas, la facturación, la gestión de empleados y la atención de los clientes. Estos procesos se encuentran relacionados entre sí, por lo que una gestión independiente puede dificultar el acceso a información actualizada y la toma de decisiones.

La propuesta consiste en desarrollar un sistema ERP que centralice estos procesos y permita relacionar la información generada por cada uno de sus módulos.

**Módulos principales:**

- Inventario / Almacén
- Compras / Proveedores
- Facturación / Ventas (POS)
- Recursos Humanos
- Food Costing
- CRM / Clientes

Los dos elementos que complementan la gestión tradicional del restaurante son **Food Costing** y **CRM**, ya que permiten relacionar la operación del negocio con el control de costos, la rentabilidad de los platos y la gestión de los clientes.

### Ventajas y desventajas de desarrollar el ERP

| Ventajas | Desventajas |
|---|---|
| Centralización de la información | Costos de desarrollo e implementación |
| Integración entre los diferentes procesos | Necesidad de capacitación del personal |
| Mejor control del inventario | Posible resistencia al cambio |
| Cálculo del costo real de los platos | Necesidad de mantenimiento y actualización |
| Identificación de cambios en los márgenes de ganancia | Dependencia de la infraestructura tecnológica |
| Mejor gestión de clientes y reservas | Complejidad de integrar diferentes módulos |
| Reducción de tareas manuales | Tiempo necesario para la adaptación de los usuarios |
| Apoyo para la toma de decisiones | |
| Mejor control de compras y proveedores | |
| Mayor visibilidad sobre la operación del restaurante | |

**Justificación / conclusión del comparativo:** el análisis de soluciones ERP existentes para restaurantes permitió identificar que herramientas como Toast, Lightspeed Restaurant y Oracle MICROS Simphony integran diferentes procesos relacionados con ventas, inventario, compras y gestión de clientes.

A partir de este comparativo se considera válido desarrollar la propuesta de un ERP para un restaurante pequeño o mediano, ya que el proyecto busca aplicar estas funcionalidades en una solución de alcance controlado. Además, la propuesta integra el control de costos mediante **Food Costing** y la gestión de clientes mediante **CRM y reservas**, relacionando información de inventario, ventas, rentabilidad y comportamiento de los clientes.

---

## 2. Definición general del proyecto de software

### A. Definición del problema

Los restaurantes deben gestionar procesos como inventario, compras, ventas, recursos humanos y atención al cliente. Cuando estos procesos se manejan de forma independiente, la información puede quedar fragmentada, dificultando el control de las operaciones y la toma de decisiones.

Además, existe la necesidad de conocer el costo real de los platos y cómo las variaciones en los precios de los proveedores afectan su margen de ganancia, así como de gestionar adecuadamente las reservas, historial y fidelización de los clientes.

**Problema principal:** falta de integración entre la operación del restaurante, el control de costos y la gestión de clientes.

### B. Solución ofrecida

Se propone desarrollar un **ERP integral para un restaurante pequeño o mediano**, que centralice e integre sus principales procesos mediante los módulos de **Inventario/Almacén, Compras/Proveedores, Facturación/Ventas (POS), Recursos Humanos, Food Costing y CRM/Clientes**.

El sistema permitirá controlar inventarios y compras, gestionar ventas, administrar información básica de empleados, calcular el costo de los platos mediante fichas técnicas y monitorear los márgenes de ganancia. Además, permitirá gestionar clientes, reservas, historial de pedidos, fidelización y encuestas de satisfacción.

El producto esperado es una **plataforma ERP centralizada** que facilite la gestión del restaurante y permita utilizar la información generada por sus diferentes módulos para mejorar el control operativo y apoyar la toma de decisiones.

### C. Justificación

La implementación de un ERP en el restaurante se justifica no solo por la integración de procesos, sino por el impacto directo en la rentabilidad del negocio. Actualmente, la falta de un sistema unificado obliga a los administradores a consolidar manualmente información de inventario, ventas, compras y costos por plato, lo que consume tiempo valioso y aumenta el riesgo de errores humanos que se traducen en pérdidas económicas.

Al centralizar esta información —incluyendo el módulo de Food Costing definido en la sección de requisitos—, el restaurante puede identificar con precisión qué insumos se desperdician más, qué platos generan mayor margen de ganancia y en qué momentos del día se concentran las ventas. Esto convierte al ERP en una herramienta no solo operativa, sino estratégica, que respalda decisiones de negocio basadas en datos reales y no en percepciones.

### D. Usuario final

El sistema está dirigido a:

- **Administradores/dueños del restaurante:** para supervisar reportes financieros, rentabilidad por plato y desempeño general del negocio.
- **Personal de cocina:** para gestionar el inventario de insumos, consultar fichas técnicas y recibir pedidos en tiempo real (módulo POS → cocina).
- **Meseros y personal de caja:** para registrar pedidos, procesar pagos y generar facturas.
- **Personal de compras:** para gestionar proveedores, comparar precios y generar órdenes de reabastecimiento.
- **Clientes:** para reservar mesa en línea y acumular puntos de fidelización (módulo CRM).

### E. Utilidad (retorno de inversión)

1. **Reducción de desperdicio de insumos:** al tener control preciso del inventario y alertas de stock mínimo/vencimiento, se estima una disminución del 15-20% en pérdidas de alimentos.
2. **Optimización del tiempo operativo:** automatizar pedidos y facturación (POS) reduce el tiempo de atención al cliente, permitiendo atender más mesas por turno.
3. **Mejor rentabilidad por plato:** el módulo de Food Costing permite identificar qué platos generan mayor margen y ajustar el menú o los precios según variaciones en el costo de insumos.
4. **Mejor toma de decisiones:** los reportes en tiempo real permiten ajustar compras según la demanda real, evitando sobrecompra.
5. **Fidelización de clientes:** el módulo CRM (reservas + puntos) mejora la experiencia del cliente, lo que se traduce en mayor retención y recomendación boca a boca.

---

## 3. Espacio de trabajo

- **Repositorio:** [https://github.com/andresalfnso3-sys/ERP-RESTAURANTES](https://github.com/andresalfnso3-sys/ERP-RESTAURANTES)
- **Documentación (esta página):** [https://andresalfnso3-sys.github.io/ERP-RESTAURANTES/](https://andresalfnso3-sys.github.io/ERP-RESTAURANTES/)
- **Miembros vinculados al repositorio:**
  - David Alejandro García Lozano
  - Diego Alejandro López Castillo
  - Juan Sebastián Rubio Gonzales
  - Julian Andrés Peñuela Alfonso
  - Carlos Eduardo Mujica Reyes

---

## 4. Especificación inicial de requerimientos

### A. Antecedentes

| Aplicación (dir. web) | Costo | Mód. Proveedores | Mód. RRHH | Mód. Inventario/Almacén | Mód. Facturación/Ventas | Mód. CRM/Clientes |
|---|---|---|---|---|---|---|
| Toast POS (toasttab.com) | Desde $69/mes | ✔ | ✔ | ✔ | ✔ | ✔ |
| Square for Restaurants (squareup.com) | Gratis / desde $60/mes | Parcial | — | ✔ | ✔ | ✔ |
| SoftRestaurant (softrestaurant.com) | Desde $50/mes | ✔ | ✔ | ✔ | ✔ | Parcial |

**Toast POS:** plataforma de punto de venta en la nube orientada a restaurantes, con módulos de inventario, nómina y reportes en tiempo real. Su costo mensual escalonado la hace poco accesible para restaurantes pequeños.

**Square for Restaurants:** sistema POS flexible con plan gratuito básico, pero limita módulos de proveedores y no incluye gestión de RRHH, obligando a integrar herramientas externas.

**SoftRestaurant:** ERP local con todos los módulos operativos, pero su módulo CRM es limitado y no ofrece fidelización de clientes robusta.

### B. Requisitos funcionales

| Código | Descripción del requisito | Módulo asociado | Prioridad |
|---|---|---|---|
| RF-01 | Descontar automáticamente los insumos del inventario según la receta al registrar una venta | Inventario / Food Costing | Alta |
| RF-02 | Notificar alertas de stock mínimo e insumos próximos a vencer | Inventario | Media |
| RF-03 | Generar y gestionar órdenes de compra a proveedores, comparando precios | Compras/Proveedores | Media |
| RF-04 | Registrar pedidos en mesa y enviarlos automáticamente a cocina | Facturación/Ventas (POS) | Alta |
| RF-05 | Generar factura o ticket con distintos métodos de pago | Facturación/Ventas (POS) | Alta |
| RF-06 | Registrar la ficha técnica (receta e insumos) de cada plato del menú | Food Costing | Alta |
| RF-07 | Calcular el costo y la rentabilidad de cada plato, con alertas por variación de precio | Food Costing | Alta |
| RF-08 | Gestionar turnos, horarios y asistencia del personal | RRHH | Media |
| RF-09 | Permitir a los clientes reservar mesa en línea y confirmar/cancelar la reserva | CRM/Clientes | Media |
| RF-10 | Registrar el historial de pedidos por cliente y acumular puntos de fidelización | CRM/Clientes | Media |

**Árbol de descomposición funcional (máx. 4 niveles):**

- **ERP Restaurante (raíz)**
  - **1. Gestión de Inventario**
    - 1.1 Control de stock
      - 1.1.1 Registrar entradas de insumos
      - 1.1.2 Descontar stock automáticamente por venta (según receta)
    - 1.2 Alertas de inventario
      - 1.2.1 Notificar insumos próximos a vencer
      - 1.2.2 Notificar stock mínimo
  - **2. Compras/Proveedores**
    - 2.1 Registro de proveedores
      - 2.1.1 Alta/baja de proveedores
      - 2.1.2 Historial de compras por proveedor
    - 2.2 Órdenes de compra
      - 2.2.1 Generar orden de compra
      - 2.2.2 Comparar precios entre proveedores
  - **3. Facturación/Ventas (POS)**
    - 3.1 Registro de pedidos
      - 3.1.1 Tomar orden en mesa
      - 3.1.2 Enviar orden a cocina
    - 3.2 Facturación
      - 3.2.1 Generar factura/ticket
      - 3.2.2 Registrar método de pago
  - **4. Food Costing**
    - 4.1 Fichas técnicas
      - 4.1.1 Registrar receta e insumos por plato
      - 4.1.2 Calcular costo por plato
    - 4.2 Control de margen
      - 4.2.1 Alertar variación de costo de insumos
      - 4.2.2 Calcular rentabilidad por plato
  - **5. RRHH**
    - 5.1 Gestión de turnos
      - 5.1.1 Asignar horarios
      - 5.1.2 Control de asistencia
    - 5.2 Nómina básica
      - 5.2.1 Cálculo de pago por turno
      - 5.2.2 Reporte de horas trabajadas
  - **6. CRM/Clientes**
    - 6.1 Reservas
      - 6.1.1 Reservar mesa en línea
      - 6.1.2 Confirmar/cancelar reserva
    - 6.2 Fidelización
      - 6.2.1 Registrar historial de pedidos por cliente
      - 6.2.2 Acumular puntos/descuentos
      - 6.2.3 Encuestas de satisfacción

### C. Requisitos no funcionales

**Nombre, logo y paleta de colores:** opciones de nombre comercial evaluadas: SaborERP, GastroCore, ChefSuite, MesaPro, PlatoON. Paleta sugerida: naranja/rojo terracota como color principal (energía, apetito), crema o beige como fondo neutro, y verde oscuro o marrón como acento (frescura/insumos naturales). El logo podría ser un ícono simple (plato, cubiertos o una llama de cocina) combinado con tipografía redondeada para transmitir cercanía.

| Código | Requisito no funcional | Justificación |
|---|---|---|
| RNF-01 | Identidad visual (nombre, logo, paleta de colores) | Refuerza el reconocimiento de marca y el profesionalismo del ERP como producto propio. |
| RNF-02 | Usabilidad / interfaz intuitiva | Meseros y personal de cocina no tienen formación técnica y deben operar el sistema rápido bajo presión durante el servicio. |
| RNF-03 | Tiempo de respuesta rápido en el POS | En horas pico cualquier demora genera filas y afecta la experiencia del cliente. |
| RNF-04 | Alta disponibilidad | El sistema no puede caerse durante el servicio, ya que eso detendría directamente las ventas. |
| RNF-05 | Seguridad de datos de clientes | El módulo CRM maneja información personal (contacto, historial de consumo) que debe protegerse contra accesos no autorizados. |
| RNF-06 | Escalabilidad | Si el restaurante crece o abre sucursales, el sistema debe poder adaptarse sin un rediseño completo. |

### D. Alcances del sistema

**Alcance:** incluye los seis módulos integrados (inventario, compras, POS, food costing, RRHH básico, CRM/reservas) para una sola sede. No incluye gestión multisucursal, integración con apps externas de delivery (Uber Eats, Rappi, etc.), ni contabilidad fiscal avanzada; estas quedan como trabajo futuro.

**Tiempo:** al ser un proyecto académico, se desarrollará por fases dentro del semestre: fase 1 inventario + POS, fase 2 food costing, fase 3 CRM/reservas y RRHH. El cronograma exacto se define según las semanas disponibles del curso.

**Costo:** al ser desarrollo propio (no licencia comercial), el costo principal es el tiempo del equipo; se mantiene bajo usando herramientas y librerías open source tanto en backend como en base de datos.

### E. Tecnologías seleccionadas

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

*Nota. Todas las tecnologías se implementan dentro de Microsoft Visual Studio 2022 utilizando el lenguaje C# sobre .NET 8 (LTS), conforme al requisito del docente.*
