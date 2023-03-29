-- Active: 1679754740218@@127.0.0.1@3306
CREATE TABLE USERS (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    role TEXT NOT NULL,
    created_at TEXT DEFAULT(DATETIME()) NOT NULL
);

INSERT INTO users (id, name, email, password, role)
VALUES 
    ("u001", "Joao", "jp@gmail.com", "jp12345", "admin"),
    ("u002", "Maria", "maria@gmail.com", "maria12345", "normal"),
    ("u003", "Haroldo", "haroldo@gmail.com", "haroldo12345", "normal"),
    ("u004", "Josiscleide", "josiscleide@gmail.com", "josiscleide12345", "normal"),
    ("u005", "Paula", "paula@gmail.com", "paula12345", "normal");
