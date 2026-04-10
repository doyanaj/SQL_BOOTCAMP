-- Session #1
-- начало транзакции
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

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
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

INSERT INTO pizzeria (id, name, rating)
VALUES (11, 'Kazan Pizza 2', 4);

COMMIT;

SELECT SUM(rating)
FROM pizzeria;