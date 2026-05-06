#  Sistema de Gestión de Biblioteca Digital - ReadFlow

[![Database](https://img.shields.io/badge/Database-MySQL-blue.svg)](https://www.mysql.com/)
[![Status](https://img.shields.io/badge/Status-Complete-green.svg)]()
[![Documentation](https://img.shields.io/badge/Documentation-Detailed-orange.svg)]()

##  Introducción
Este repositorio presenta el diseño y la implementación técnica de la base de datos para **ReadFlow**, una plataforma digital avanzada diseñada para la gestión eficiente de libros, usuarios, préstamos y reseñas. El objetivo principal de este proyecto es proporcionar una infraestructura de datos robusta, escalable y normalizada que garantice la integridad de la información y optimice las operaciones bibliotecarias.

---

##  Fases del Proyecto

### 1. Diseño Conceptual (DER)
En esta fase inicial, se identificaron las entidades clave del negocio y sus interacciones. El modelo se centra en la lógica del dominio sin restricciones técnicas, permitiendo una visión clara de los procesos de préstamo, categorización y retroalimentación de usuarios.

*   **Entidades**: Usuarios, Libros, Categorías, Préstamos y Reseñas.
*   **Relaciones**: Gestión de cardinalidades 1:N y N:M (Resuelta mediante tablas intermedias).

![Modelo Conceptual](imagenes/modeloconceptual.png)

---

### 2. Diseño Lógico (Relacional)
El modelo conceptual se transformó en un esquema relacional estructurado. Se definieron las llaves primarias (PK), foráneas (FK) y las reglas de integridad referencial. El diseño ha sido normalizado hasta la **Tercera Forma Normal (3FN)** para eliminar redundancias y prevenir anomalías de actualización.

*   **Normalización**: Optimización de tablas para eficiencia en consultas.
*   **Esquema**: Definición precisa de tipos de datos y restricciones de unicidad (ISBN, Email).

![Modelo Relacional](imagenes/modelorelacional.png)

---

### 3. Implementación Física (SQL)
Se desarrolló el script DDL completo para la creación de la base de datos `ReadFlowDB`. Esta fase incluye la implementación de restricciones avanzadas como:
*   `UNIQUE constraints` para identificadores críticos.
*   `CHECK constraints` para validación de rangos (ej. calificaciones).
*   `ON DELETE CASCADE` para mantener la consistencia en la eliminación de datos.

![Modelo Físico](imagenes/modelofisico.png)

---

##  Estructura del Repositorio
*   `script_db.sql`: Código fuente DDL para la generación de tablas y relaciones.
*   `consultas.sql`: Scripts de prueba con consultas complejas para validación del modelo.
*   `imagenes/`: Repositorio de diagramas técnicos.

## Instrucciones de Uso
1. Clone el repositorio:
   ```bash
   git clone https://github.com/santiagoosorio0708e-wq/Daniel_Osorio_Biblioteca-.git
   ```
2. Ejecute el script de creación en su gestor de base de datos preferido (MySQL/MariaDB):
   ```sql
   SOURCE script_db.sql;
   ```
3. Valide el funcionamiento con las consultas incluidas en `consultas.sql`.

---
*Desarrollado como parte del proyecto de Diseño de Bases de Datos Relacionales.*
