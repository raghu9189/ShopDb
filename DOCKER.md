# 🐳 Docker SQL Server Guide

This guide explains how to spin up, connect to, and run your SQL practice scripts using Microsoft SQL Server 2022 running inside a Docker container.

---

## 🚀 1. Spin Up SQL Server

Make sure you have [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running.

Open your terminal in the project directory and run:

```bash
docker compose up -d
```

### What this does:
* Downloads the SQL Server 2022 image (using `--platform linux/amd64` for full Apple Silicon compatibility).
* Sets the system administrator (`sa`) password to: `SqlPracticePass123!`
* Maps port `1433` on your host to port `1433` inside the container.
* Mounts a named volume (`mssql_data`) to persist your database across container restarts.
* Mounts the current repository folder to `/workspace` inside the container.

---

## 🛠️ 2. Initialize the Database & Tables

Since the current folder is mounted inside the container under `/workspace`, you can run `ShopDb.sql` directly using `sqlcmd` without copying any files:

Run the following command in your host terminal:

```bash
docker exec -it shopdb_sqlserver /opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P 'SqlPracticePass123!' -C -i /workspace/ShopDb.sql
```

> [!NOTE]
> The `-C` flag tells `sqlcmd` to trust the server certificate, which is required in newer SQL Server containers to avoid SSL errors.

---

## 🔍 3. Accessing the SQL Server Command Line

If you want to run query files or type SQL commands interactively inside the container:

### Enter the Interactive Shell
```bash
docker exec -it shopdb_sqlserver /opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P 'SqlPracticePass123!' -C
```

Once inside, you will see a prompt like `1>`. You can run queries like this:

```sql
1> USE ShopDB;
2> SELECT * FROM Customers;
3> GO
```

*Type `EXIT` to leave the shell.*

---

## 💻 4. Run Practice Queries directly from host terminal

To execute your entire practice query file [Queries.sql](file:///Users/raghuballu/Documents/raghu_works/Databases/SQL%20Server/Queries.sql) directly:

```bash
docker exec -it shopdb_sqlserver /opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P 'SqlPracticePass123!' -C -i /workspace/Queries.sql
```

---

## 🎨 5. Connect via GUI Tools (Recommended)

Instead of the command line, you can connect using a graphical database manager:

### Connection Parameters:
* **Host:** `localhost` or `127.0.0.1`
* **Port:** `1433`
* **Username / Login:** `sa`
* **Password:** `SqlPracticePass123!`
* **Encryption / SSL:** Select **Trust Server Certificate** (or disable certificate verification).

### Popular Tools:
1. **VS Code SQL Server Extension:** Search for "SQL Server (mssql)" in VS Code extensions.
2. **Azure Data Studio:** A lightweight, cross-platform database tool by Microsoft.
3. **DBeaver:** A powerful free open-source database GUI client.

---

## 🛑 6. Stop and Clean Up

When you are done practicing:

* **Stop the container:**
  ```bash
  docker compose stop
  ```
* **Start it again later:**
  ```bash
  docker compose start
  ```
* **Destroy the container (keeps data volume):**
  ```bash
  docker compose down
  ```
* **Destroy container and database data volume:**
  ```bash
  docker compose down -v
  ```
