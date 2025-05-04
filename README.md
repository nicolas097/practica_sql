
# Practica_sql
Repositorio de practicas SQL

Este repositorio contiene **consultas avanzadas en SQL** utilizando diferenes tipo de bases de datos.

## 📁 chinook: 

base de datos Chinook, la cual simula una tienda de música digital.

### Desafíos:

1. **Top 5 artistas más vendidos**  
   Obtener los 5 artistas con mayor cantidad de ventas totales.

2. **Clientes más leales**  
   Identificar a los clientes con mayor número de compras.

3. **Facturación por género musical**  
   Calcular la facturación total por cada género.

4. **Clientes que nunca compraron**  
   Listar los clientes que están en la base pero no han realizado ninguna compra.

5. **Ventas por país y ciudad**  
   Agregar ventas por ubicación geográfica (país y ciudad del cliente).



## 🧠 Habilidades en práctica

- Subconsultas anidadas
- JOINs múltiples
- Funciones de agregación (`SUM`, `COUNT`, etc.)
- Agrupamientos (`GROUP BY`)
- Filtros (`HAVING`, `WHERE`)
- Ordenamientos (`ORDER BY`)
- Lógica condicional (`CASE`)

---

## 📁 financiaBD:

Base de datos FinancialDB, orientada a operaciones bancarias reales.

### Desafíos:

1. **Clientes con más retiros**  
   Identifica a los 5 usuarios que han realizado mayor cantidad de retiros desde sus cuentas, mostrando también el monto total retirado por cada uno.
   
2. **Tarjetas sin actividad**  
   Listar todas las tarjetas de débito o crédito que no han sido utilizadas para realizar depósitos ni retiros.

3. **Cajeros con mayor tráfico**  
   Muestra los cajeros automáticos (ATMs) que han procesado la mayor cantidad de transacciones, tanto retiros como depósitos.

4. **Balance promedio por banco**  
   Calcula el balance promedio actual de todas las cuentas en cada banco, agrupando por entidad bancaria.

5. **Transacciones sospechosas**  
   Identifica transacciones de alto valor (por ejemplo, mayores a $10,000) que hayan ocurrido más de una vez el mismo día para un mismo usuario

6. **Clientes sin transacciones**
   Encuentra usuarios que tienen cuentas registradas, pero no han realizado ni un solo depósito ni retiro.

7. **Bancos con mayor captación**
   Muestra los bancos que han recibido mayores montos en depósitos, ordenados de mayor a menor

8. **Evolución de saldos por mes**
   Calcula la evolución del capital total del sistema por mes, considerando el balance de todas las cuentas.

9. **Transferencias simuladas (con subconsultas)**
   Simula una transferencia entre dos cuentas y refleja el ajuste de balances, utilizando subconsultas correlacionadas.

10. **Top usuarios por tipo de transacción**
   Por cada tipo de transacción (retiro o depósito), muestra el usuario que más veces la ha realizado


## 🧠 Habilidades en práctica

   - Subconsultas correlacionadas y no correlacionadas

   - Funciones de agregación (SUM, COUNT, AVG, MAX, etc.)

   - Agrupamiento jerárquico (GROUP BY múltiples niveles)

   - JOINs complejos (INNER, LEFT, anti-joins)

   - Filtros condicionales (WHERE, HAVING)

   - Lógica avanzada con CASE

   - Manipulación de fechas y funciones temporales

   - Ordenamiento por múltiples columnas

   - Simulación de operaciones bancarias

   - Optimización de consultas en bases de datos relacionales

---


## 📁 datasets/

- `Chinook_MySql.sql`: script para crear e insertar todos los datos necesarios de la base Chinook en MySQL o MariaDB.
- `financialBD.sql`: script para crear e insertar todos los datos necesarios de la base financialBD en MySQL o MariaDB.