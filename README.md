# 🐬 MySQL Docker Compose Setup (Reusable Docker Template)

This project provides a **production-style reusable MySQL server setup** using Docker Compose. It creates a **MySQL 8.0 server** with **root user**, **application users**, **permissions**, and **database initialization scripts**.

## ✅ Features:
- Env for environment customization
- MySQL 8.0 Server with admin and application user
- Custom Users with Passwords and Roles
- Sample Database (`your_db_name`) -  ref: .env
- Volume-backed Persistent Data Storage -> ./data
- Exposed on Port 3306 (Customizable) - ref: .env
- Reusable `.sql` Initialization Scripts
- Portable & Easily modifiable for any project

## 📂 Folder Structure:
```bash
├── docker-compose.yml
├── mysql-init/
│   ├── 01_create_users.sql
│   └── 02_set_permissions.sql
├── data/  <-- MySQL Data (auto-generated on first run)
└── README.md
└── .env <--- Environment Variables
```

## ✅ Default Users:

| Username   | Password      | Role                |
|----------- |-------------- |-------------------- |
| root       | StrongRootPassword  | Full Access (Admin) |
| appuser    | userPassword  | Limited Access (CRUD on `your_db_name`) |
| adminuser  | adminPassword | Full Access on `your_db_name` |

## ✅ How to Use:
1. Run the server:
```bash
docker-compose up -d
```

2. Connect using CLI or GUI on port `3306`.

3. Modify SQL files in `/mysql-init/` as needed.

## ✅ Data Persistence:
Data is saved in the `/data/` folder.

## ✅ License:
Free for public use and customization.
