-- Session #1
-- начало транзакции
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- запрос
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- публикуем изменения
COMMIT;

SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- Session #2
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

UPDATE pizzeria
SET rating = 3.6
WHERE name = 'Pizza Hut';

COMMIT;

SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';