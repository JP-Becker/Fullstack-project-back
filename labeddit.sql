-- Active: 1679754740218@@127.0.0.1@3306
CREATE TABLE users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    role TEXT NOT NULL,
    created_at TEXT DEFAULT(DATETIME()) NOT NULL
);

CREATE TABLE posts (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    creator_id TEXT NOT NULL,
    comments INTEGER DEFAULT(0) NOT NULL,
    likes INTEGER DEFAULT(0) NOT NULL,
    dislikes INTEGER DEFAULT(0) NOT NULL,
    created_at TEXT DEFAULT(DATETIME()) NOT NULL,
    uploaded_at TEXT DEFAULT(DATETIME()) NOT NULL,
    FOREIGN KEY (creator_id) REFERENCES users (id)
);

INSERT INTO users (id, name, email, password, role)
VALUES 
    ("u001", "Joao", "jp@gmail.com", "jp12345", "admin"),
    ("u002", "Maria", "maria@gmail.com", "maria12345", "normal"),
    ("u003", "Haroldo", "haroldo@gmail.com", "haroldo12345", "normal"),

INSERT INTO 
