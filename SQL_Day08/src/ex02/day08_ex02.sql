-- Session #1
-- начало транзакции
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- запрос
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

UPDATE pizzeria
SET rating = 4
WHERE name = 'Pizza Hut';

-- публикуем изменения
COMMIT;

SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- Session #2
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

UPDATE pizzeria
SET rating = 3.6
WHERE name = 'Pizza Hut';

COMMIT;

SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';