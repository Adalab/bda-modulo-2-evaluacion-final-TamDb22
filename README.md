<h1 align="center"> Proyecto de Data Analytics — ETL y Análisis SQL de Datos Cinematográficos</h1>

<p align="center">
    Bootcamp de Data Analytics & IA.
</p>

<p align="center">
  <img src="imageBootcamp.png" width="300">
</p>

---

## Índice de Contenidos

* [Resumen y Alcance del Proyecto](#resumen-y-alcance-del-proyecto)
* [Competencias Adquiridas (Objetivos)](#competencias-adquiridas-objetivos)
* [Análisis de Datos Propios (Ejercicio 1: ETL y API)](#análisis-de-datos-propios-ejercicio-1-etl-y-api)
* [Consultas en Base de Datos (Ejercicio 2: Sakila)](#consultas-en-base-de-datos-ejercicio-2-sakila)
* [Herramientas](#herramientas)
* [Ejecucion](#ejecucion)
* [Autoría](#autoría)

---

## Resumen y alcance del proyecto

Este repositorio contiene la resolución del Módulo de **Python y Bases de Datos** del Bootcamp de Data Analytics de Adalab.

El proyecto está dividido en dos partes principales, cubriendo el ciclo completo de manipulación y análisis de datos:

1.  **Extracción, Carga y Transformación (ETL):** Obtención de datos desde una API, procesamiento con Python/Pandas, y almacenamiento final en una base de datos MySQL creada programáticamente.
2.  **Análisis SQL Avanzado:** Resolución de consultas de negocio y *joins* complejos utilizando la base de datos de ejemplo **Sakila**.

## Competencias Adquiridas Objetivos

* Realizar la extracción de datos mediante una **API (JSON)**.
* Limpiar, transformar y almacenar los datos en una instancia **MySQL**.
* Dominar operaciones fundamentales de SQL: `SELECT`, `COUNT`, `AVG`, `GROUP BY`, `ORDER BY`.
* Implementar conexiones entre **Python y MySQL** utilizando la librería `mysql.connector`.
* Resolver consultas utilizando *joins* y agregaciones complejas en un esquema predefinido (Sakila).

## Análisis de datos propios ejercicio 1 ETL y api

Se realiza el ejercicio completo siguiendo el flujo ETL:

### 🔹 Fase 1 — Extracción y Transformación de datos

* **Endpoint de extracción:** `https://beta.adalab.es/resources/apis/pelis/pelis.json`.
* Se extrajeron 100 películas.
* La información fue cargada y procesada en un **DataFrame de Pandas**.
* Se aplicó lógica para convertir el campo `adultos` (booleano) a 'sí' o 'no'.

### 🔹 Fase 2 — Creación e Inserción de Datos

La base de datos `peliculas_db` fue creada programáticamente desde el script de Python.

* **Tabla creada:** `peliculas`.
* **Campos almacenados:** `titulo`, `año`, `duracion`, `genero`, `adultos`, y `subtitulos`.
* Los datos fueron insertados directamente en MySQL, gestionando la conversión de la lista de subtítulos (ej. `['es', 'en']`) a un string (ej. `'es, en'`) para su correcto almacenamiento.

### 🔹 Fase 3 — Consultas SQL de Análisis

Se obtuvieron los siguientes *insights* utilizando la tabla `peliculas`:

| Pregunta de Negocio | Consulta de SQL | Resultado Clave |
| :--- | :--- | :--- |
| Duración total | ¿Cuántas películas tienen una duración superior a 120 minutos? | **59** películas |
| Subtítulos | ¿Cuántas películas incluyen subtítulos en español? | **100** películas |
| Contenido Adulto | ¿Cuántas películas tienen contenido adulto? | **47** películas |
| Película más antigua | Obtener el título y el año de la película con el año más bajo. | **Citizen Kane** (1941) |
| Promedio por género | Promedio de duración de las películas agrupado por género. | El género **Western** tiene el promedio más alto (166.50 min). |
| Conteo por año | Número de películas registradas por año, ordenado descendentemente. | El año **2001** es el año con más películas registradas (5). |
| Búsqueda | Mostrar todas las películas cuyo título contenga una palabra clave. | Búsqueda implementada usando `LIKE`. |

## Consultas en base de datos Ejercicio 2 Sakila

Se resuelven todas las consultas del enunciado utilizando la base de datos de ejemplo **SAKILA**.

* **Consultas de Selección y Filtrado:**
    * Selección de todos los nombres de películas sin duplicados.
    * Películas con clasificación `'PG-13'` y aquellas que **no** son `'R'` ni `'PG-13'`.
    * Encontrar el título y la descripción de películas que contengan la palabra `'amazing'`.
    * Encontrar películas con duración mayor a 120 minutos o que contengan las palabras `'dog'` o `'cat'` en su descripción.
    * Películas lanzadas entre el año 2005 y 2010.
* **Consultas con *JOINs* y Agregaciones (`GROUP BY`, `COUNT`, `AVG`):**
    * Encontrar el nombre y apellido de los actores que participan en la película con título `'Indian Love'`.
    * Cálculo de la cantidad total de películas en cada clasificación (`rating`).
    * Cálculo del promedio de duración de las películas para cada clasificación.
    * Conteo total de películas alquiladas por cada cliente (ID, nombre y apellido).
    * Conteo total de películas alquiladas por categoría de película (nombre de la categoría y recuento).
    * Listado de actores por apellido que contengan la palabra `'Gibson'`.

---

## Herramientas

<p align="center">
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" alt="Python" width="55" height="55"/>
  &nbsp;&nbsp;
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/pandas/pandas-original.svg" alt="Pandas" width="55" height="55"/>
  &nbsp;&nbsp;
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/jupyter/jupyter-original.svg" alt="Jupyter" width="55" height="55"/>
  &nbsp;&nbsp;
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original.svg" alt="MySQL" width="55" height="55"/>
  &nbsp;&nbsp;
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" alt="GitHub" width="55" height="55"/>
</p>

* **Python:** Entorno principal para la extracción, transformación y conexión con la base de datos.
* **Librerías Python:** `Pandas`, `requests`, `mysql.connector`.
* **SQL:** (DDL, DML, JOINS, Subconsultas, Agregaciones).
* **MySQL:** Almacenamiento y consulta de datos.

---

## Ejecucion

Para replicar el entorno de trabajo:

1.  **Clonar el repositorio:**
    ```bash
    git clone [https://github.com/usuario/proyecto-peliculas.git](https://github.com/usuario/proyecto-peliculas.git)
    ```
2.  **Instalar dependencias:**
    ```bash
    pip install pandas requests mysql-connector-python
    ```
3.  **Ejecutar el Notebook de Python** (`nombre_del_notebook.ipynb`):
    * Las primeras celdas realizan la extracción, crean la base de datos `peliculas_db` y cargan los datos.
    * Las celdas subsiguientes ejecutan las consultas de análisis en la base de datos recién creada.
4.  **Ejecutar el script SQL de Sakila** (`Sakila_Ejercicio2.sql`):
    * Conectarse a su gestor MySQL (Workbench/CLI) y ejecutar el *script* para ver los resultados de las consultas de Sakila.

---

## Autoría

Proyecto desarrollado por: 
<p align="center">
  <a href="https://github.com/TuUsuarioDeGitHub">
    <img src="https://github.com/TamDb22.png" width="80" height="80" style="border-radius:50%;" alt="Tu Nombre"/>
  </a>
</p>
<p align="center"><strong>✨ ¡Aprender es construir! ✨</strong></p>
