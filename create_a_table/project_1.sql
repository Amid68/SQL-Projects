DROP TABLE if EXISTS friends;

CREATE TABLE friends (
  id INTEGER PRIMARY KEY,
  name TEXT DEFAULT "no name",
  birthday DATE DEFAULT CURRENT_DATE
);

INSERT INTO friends (id, name, birthday)
VALUES (1, "Ororo Munroe", "1940-05-30");

INSERT INTO friends (id, name, birthday)
VALUES (2, "Naoise Nikola", "1967-07-19");

INSERT INTO friends (id, name, birthday)
VALUES (3, "Granuaile Fredrika", "1981-12-28");

UPDATE friends
SET name = "Storm"
WHERE id = 1;

ALTER TABLE friends
ADD COLUMN email TEXT;

UPDATE friends
SET email = "storm@codecademy.com"
WHERE id = 1;

UPDATE friends 
SET email = "nikola@codecademy.com"
WHERE id = 2;

UPDATE friends
SET email = "fredrika@codecademy.com"
WHERE id = 3;

DELETE FROM friends
WHERE id = 1;

SELECT *
FROM friends;


