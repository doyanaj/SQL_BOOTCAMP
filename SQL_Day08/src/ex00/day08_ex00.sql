-- Session #1
-- начало транзакции
BEGIN;

-- обновление рейтинга
UPDATE pizzeria
SET rating = 5
WHERE name = 'Pizza Hut';

-- запрос, выводящий обновленные данные
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

COMMIT;

-- Session #2
-- запрос до коммита
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- запрос после коммита
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';