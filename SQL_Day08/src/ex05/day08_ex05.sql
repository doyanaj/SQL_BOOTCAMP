-- Session #1
-- начало транзакции
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- запрос
SELECT SUM(rating)
FROM pizzeria;

SELECT SUM(rating)
FROM pizzeria;

-- публикуем изменения
COMMIT;

SELECT SUM(rating)
FROM pizzeria;

-- Session #2
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

INSERT INTO pizzeria (id, name, rating)
VALUES (10, 'Kazan Pizza', 5);

COMMIT;

SELECT SUM(rating)
FROM pizzeria;