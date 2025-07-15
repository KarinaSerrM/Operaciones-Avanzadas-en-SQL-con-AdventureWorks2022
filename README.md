# Operaciones Avanzadas en SQL con AdventureWorks2022

Este repositorio contiene una serie de ejercicios prácticos realizados sobre la base de datos AdventureWorks2022, orientados al manejo de operaciones relacionales avanzadas en SQL. Se practican distintas técnicas de unión entre tablas, tratamiento de valores nulos y transformación condicional de datos.

## Objetivo

Fortalecer competencias en la escritura de consultas SQL que involucran relaciones complejas entre tablas, combinaciones de conjuntos de datos y limpieza semántica mediante funciones de control.

## Contenidos cubiertos

### Tipos de JOIN aplicados
- `INNER JOIN`: Obtención de empleados con sus respectivos cargos
- `LEFT JOIN` y `RIGHT JOIN`: Visualización de pedidos y clientes incluso sin coincidencias
- `FULL OUTER JOIN`: Unión total de productos con sus reseñas
- `CROSS JOIN`: Combinación cartesiana entre productos y categorías

### Uniones y transformaciones
- `UNION` vs `UNION ALL`: Distinción entre resultados únicos y duplicados
- `CASE`: Clasificación condicional de títulos con la palabra 'Manager'
- `COALESCE`: Reemplazo de valores nulos con alternativas válidas
- `ISNULL`: Limpieza de campos vacíos en resultados finales

## Herramientas utilizadas

- SQL Server (AdventureWorks2022)  
- SQL Management Studio / Azure Data Studio  
- Scripts `.sql` documentados paso a paso

## Estructura del repositorio

- `/consultas`: scripts organizados por tipo de operación  
- `/screenshots`: capturas de resultados relevantes  
- `/README.md`: guía descriptiva del proyecto

## Conclusiones

- La aplicación correcta de múltiples JOIN permite construir relaciones potentes entre tablas.
- Las funciones como `CASE`, `COALESCE` e `ISNULL` son esenciales para limpiar y transformar resultados.
- UNION y UNION ALL permiten unir conjuntos de datos con distintos niveles de filtrado.
