WITH female_orders AS (
    SELECT pz.name AS pizzeria_name
    FROM pizzeria AS pz
    JOIN menu AS m ON pz.id = m.pizzeria_id
    JOIN person_order AS po ON m.id = po.menu_id
    JOIN person AS p ON po.person_id = p.id
    WHERE p.gender = 'female'
),
male_orders AS (
    SELECT pz.name AS pizzeria_name
    FROM pizzeria AS pz
    JOIN menu AS m ON pz.id = m.pizzeria_id
    JOIN person_order AS po ON m.id = po.menu_id
    JOIN person AS p ON po.person_id = p.id
    WHERE p.gender = 'male'
)
(SELECT pizzeria_name FROM female_orders
EXCEPT
SELECT pizzeria_name FROM male_orders)
UNION
(SELECT pizzeria_name FROM male_orders
EXCEPT
SELECT pizzeria_name FROM female_orders)
ORDER BY pizzeria_name;