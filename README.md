# 🌙 Infra-Daymood: Guía de Configuración de Base de Datos

## 🚀 Configuración Rápida

1. **Crear el `.env`: Copia el archivo `.env.example` y nómbralo `.env`. Asegúrate de que tenga esto con las variables de entorno compartidas:
```env
POSTGRES_USER=daymood_admin
POSTGRES_PASSWORD=tu_password
POSTGRES_DB=daymood_db
DATABASE_URL=postgresql://daymood_admin:tu_password@localhost:5432/daymood_db

```


2. **Levantar el contenedor**:
```bash
docker compose up --build

```

---

## Verificación de Datos (Resultados Esperados)

Para asegurarte de que los scripts `01_schema`, `02_seed` y `03_report_vw` corrieron bien, entra a la base de datos:

```bash
docker exec -it daymood_postgres psql -U daymood_admin -d daymood_db

```

Luego, copia y pega estas consultas para comparar tus resultados:

### 1. ¿Están todas las tablas?

**Consulta:**
 \dt

**Resultado esperado:**
              List of relations
 Schema |      Name      | Type  |     Owner     
--------+----------------+-------+---------------
 public | categories     | table | daymood_admin
 public | comments       | table | daymood_admin
 public | emotions       | table | daymood_admin
 public | favorites      | table | daymood_admin
 public | forums         | table | daymood_admin
 public | habits         | table | daymood_admin
 public | posts          | table | daymood_admin
 public | record_habits  | table | daymood_admin
 public | records        | table | daymood_admin
 public | user_forum     | table | daymood_admin
 public | users          | table | daymood_admin
 public | weekly_form    | table | daymood_admin
(12 rows)


### 2. ¿Se cargaron los usuarios de prueba?

**Consulta:** 

SELECT username, email FROM users;


**Resultado esperado:**

```text
     username    |          email          
-----------------+-------------------------
 NadiaTest       | nadia@example.com
 user_tkql2bk8   | uwu@gmail.com
 nadiaprueba     | nadiaprueba@gmail.com
(3 rows)

```

### 3. ¿Funcionan las categorías y el ID autoincremental?

**Consulta:** `SELECT id, name FROM categories WHERE id <= 5;`
**Resultado esperado:**

```text
 id |          name          
----+------------------------
  1 | Sueno
  2 | Alimentacion general
  3 | Interacciones sociales
  4 | Actividad fisica
  5 | Autocuidado
(5 rows)


### 4. ¿La vista de reportes existe?

**Consulta:** 
\dv
**Resultado esperado:**


           List of relations
 Schema |     Name     | Type |     Owner     
--------+--------------+------+---------------
 public | weekly_stats | view | daymood_admin

```

---

## 🛠️ Comandos de Emergencia

* **"No veo los datos de arriba":** Es probable que el volumen esté "sucio". Limpia todo y reinicia:
```bash
docker compose down -v
docker compose up --build

```


* **"Quiero salir de la terminal de Postgres":** Escribe `\q` y dale a Enter.
