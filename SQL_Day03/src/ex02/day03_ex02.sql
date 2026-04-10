WITH not_order AS (
    SELECT m.id AS menu_id
    FROM menu AS m
    EXCEPT
    SELECT po.menu_id
    FROM person_order AS po
    ORDER BY menu_id
)
SELECT
    m.pizza_name,
    m.price,
    pz.name AS pizzeria_name
FROM not_order AS nor
INNER JOIN menu AS m ON nor.menu_id = m.id
INNER JOIN pizzeria AS pz ON m.pizzeria_id = pz.id
ORDER BY pizza_name, price;