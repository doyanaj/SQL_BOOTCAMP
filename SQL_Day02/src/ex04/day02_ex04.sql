SELECT
    m.pizza_name,
    pz.name AS pizzeria_name,
    m.price
FROM menu AS m
INNER JOIN pizzeria AS pz ON m.pizzeria_id = pz.id
WHERE m.pizza_name IN ('mushroom pizza', 'pepperoni pizza')
ORDER BY pizza_name, pizzeria_name;
