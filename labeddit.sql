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
    content TEXT,
    comments INTEGER DEFAULT(0) NOT NULL,
    likes INTEGER DEFAULT(0) NOT NULL,
    dislikes INTEGER DEFAULT(0) NOT NULL,
    created_at TEXT DEFAULT(DATETIME()) NOT NULL,
    uploaded_at TEXT DEFAULT(DATETIME()) NOT NULL,
    FOREIGN KEY (creator_id) REFERENCES users (id)
);

CREATE TABLE comments_posts (
    id TEXT PRIMARY KEY UNIQUE NOT NULL, 
    creator_id TEXT NOT NULL, 
    content TEXT,
    likes INTEGER DEFAULT(0) NOT NULL, 
    dislikes INTEGER DEFAULT(0) NOT NULL, 
    created_at TEXT DEFAULT(DATETIME()) NOT NULL, 
    updated_at TEXT DEFAULT(DATETIME()) NOT NULL,
    post_id TEXT NOT NULL,
    FOREIGN KEY (creator_id) REFERENCES users (id),
    FOREIGN KEY (post_id) REFERENCES posts (id)
);

CREATE TABLE likes_dislikes (
    user_id TEXT NOT NULL, 
    post_id TEXT NOT NULL,
    like INTEGER,
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(post_id) REFERENCES posts(id)
);

CREATE TABLE likes_dislikes_comments (
    user_id TEXT NOT NULL, 
    comment_id TEXT NOT NULL,
    like INTEGER,
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(comment_id) REFERENCES comments_posts(id)
);

INSERT INTO users (id, name, email, password, role)
VALUES 
    ("u001", "Joao", "jp@gmail.com", "jp12345", "admin"),
    ("u002", "Maria", "maria@gmail.com", "maria12345", "normal"),
    ("u003", "Haroldo", "haroldo@gmail.com", "haroldo12345", "normal");

INSERT INTO posts (id, creator_id, content)
VALUES
    ("p001", "u001", "Procurando job"),
    ("p002", "u003", "IA não me substitua pfv"),
    ("p003", "u002", "No ideas");

INSERT INTO comments_posts (id, creator_id, content, post_id)
VALUES
    ("c001", "u002", "Entrega do projeto", "p001"),
    ("c002", "u001", "Não vai", "p002"),
    ("c003", "u001", "Me neither", "p003");

SELECT * FROM users;

SELECT * FROM posts;

SELECT * FROM comments_posts;

SELECT * FROM likes_dislikes;

SELECT * FROM likes_dislikes_comments;
