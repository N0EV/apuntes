# Conceptos basicos

>[!NOTE]
>Para todos los apuntes que se vayan a hacer a lo largo de este curso se usara la bbdd tienda-videojuegos.sql

## 1. ¿Qué es una Base de Datos Relacional (RDBMS)?
Es un sistema para organizar datos en **tablas** (filas y columnas) que se conectan entre sí mediante identificadores únicos.
*   **Tabla**: Estructura que almacena datos sobre un objeto real (ej. `videojuegos`, `usuarios`).
*   **Fila (Registro / Tupla)**: Un elemento individual dentro de la tabla (ej. el juego "Elden Ring").
*   **Columna (Campo / Atributo)**: Una característica del elemento (ej. `precio`, `titulo`).

## 2. ¿Qué es SQL?
**SQL** (*Structured Query Language* o Lenguaje de Consulta Estructurado) es el lenguaje universal para comunicarnos con las bases de datos. Sirve para pedir datos, guardarlos, modificarlos o eliminarlos.

## 3. Componentes Clave de una Tabla profesional
Para garantizar que los datos estén bien hechos y no tengan errores, usamos tres conceptos:

*   **Llave Primaria (Primary Key - PK)**: 
    *   Es el identificador único de cada fila.
    *   No se puede repetir y no puede estar vacío (`NOT NULL`).
    *   *Ejemplo*: El campo `id_videojuego`.
*   **Llave Foránea (Foreign Key - FK)**: 
    *   Es una columna que se conecta con la Llave Primaria de **otra** tabla.
    *   Sirve para crear relaciones y mantener la consistencia.
    *   *Ejemplo*: `fk_genero` en la tabla videojuegos apunta a la tabla géneros.
*   **Restricciones (Constraints)**: Reglas para proteger los datos.
    *   `NOT NULL`: Obliga a que el campo tenga un valor.
    *   `UNIQUE`: No permite valores duplicados (ej. el correo de un usuario).
    *   `DEFAULT`: Asigna un valor automático si no pones nada (ej. `stock DEFAULT 0`).

## 4. Clasificación de los Comandos SQL
Los comandos de SQL se dividen en "sublenguajes" según lo que hacen:

### DDL (Data Definition Language - Definición)
Sirve para crear y modificar la **estructura** de la base de datos (las cajas, no el contenido).
*   `CREATE`: Crear bases de datos o tablas.
*   `ALTER`: Modificar una tabla que ya existe.
*   `DROP`: Borrar una tabla o base de datos para siempre.

### DML (Data Manipulation Language - Manipulación)
Sirve para gestionar los **datos** que están dentro de las tablas (el contenido).
*   `SELECT`: Leer o consultar datos (el más usado).
*   `INSERT`: Añadir nuevos registros.
*   `UPDATE`: Modificar registros existentes.
*   `DELETE`: Eliminar registros.