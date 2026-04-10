-- Session #1
-- начало транзакции
BEGIN;

-- обновление данных
UPDATE pizzeria
SET rating = 2.8
WHERE id = 1;

UPDATE pizzeria
SET rating = 3.4
WHERE id = 2;

-- публикуем изменения
COMMIT;

-- Session #2
BEGIN;

UPDATE pizzeria
SET rating = 4.2
WHERE id = 2;

UPDATE pizzeria
SET rating = 5
WHERE id = 1;

COMMIT;