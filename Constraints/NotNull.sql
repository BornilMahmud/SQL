
CREATE TABLE users (
  id   INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age  INTEGER
);

INSERT INTO users (name, age) VALUES ('Alice', 30);
INSERT INTO users (name, age) VALUES ('Bob', 25);
INSERT INTO users (name, age) VALUES ('Carol', 35);

SELECT * FROM users;
SELECT name FROM users WHERE age > 31 ORDER BY age;
