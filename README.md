# Let's Work - Entorno Integrado con Docker 🚀

Este repositorio contiene el orquestador de **Docker Compose** diseñado para levantar de forma local y centralizada todo el ecosistema de la plataforma **Let's Work**.

El entorno integra de manera automática:
* **Frontend/Backend Web:** Aplicación PHP 8.2 (Apache).
* **API Rest:** Servicio en Python 3.10 (FastAPI).
* **Base de Datos:** Motor MySQL 8.0 con persistencia de datos.

---

## 🛠️ Requisitos Previos

Antes de arrancar, asegurate de tener instalado en tu sistema:
1.  [Docker Desktop](https://www.docker.com/products/docker-desktop/) (ejecutándose).
2.  **Git** para la gestión de los subproyectos.

---

## 📦 Estructura del Workspace

Para que el orquestador funcione correctamente, las carpetas de los proyectos deben coexistir dentro de este directorio con los siguientes nombres exactos:

```text
letswork-workspace/
├── letsWork/           # Repositorio de la aplicación PHP
├── letswork-api/       # Repositorio de la API en Python (FastAPI)
├── docker-compose.yml  # Configuración del entorno
└── init.sql            # Script de inicialización de la Base de Datos

🚀 Instrucciones para Levantar el Entorno
1. Clonar los proyectos del sistema

Si estás arrancando en una máquina nueva, posicionate en la raíz de este workspace y cloná los repositorios correspondientes:
Bash

git clone https://github.com/jmverneri/letsWork.git letsWork
git clone https://github.com/jmverneri/letswork-api.git letswork-api

2. Encender los servicios

Con Docker Desktop abierto, ejecutá el siguiente comando en la raíz del workspace para descargar las imágenes y levantar los contenedores:
Bash

docker compose up

(La primera vez puede demorar un par de minutos mientras inicializa la base de datos con el archivo init.sql).
3. Accesos Locales

Una vez que la terminal indique que los servicios están listos, podés acceder mediante:

    Aplicación Web (PHP): http://localhost:8080

    API (FastAPI Docs): http://localhost:8000/docs

    Base de Datos (MySQL): Puerto 3306 | Usuario: root | Clave: root

🛑 Apagar el Entorno

Para detener todos los servicios de manera segura sin perder los datos almacenados en la base de datos, presioná Ctrl + C en la terminal y luego ejecutá:
Bash

docker compose down