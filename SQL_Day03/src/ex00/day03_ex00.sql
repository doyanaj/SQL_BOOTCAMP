SELECT
    m.pizza_name,
    m.price,
    pz.name AS pizzeria_name,
    pv.visit_date
FROM menu AS m
INNER JOIN pizzeria AS pz ON m.pizzeria_id = pz.id
INNER JOIN person_visits AS pv ON pz.id = pv.pizzeria_id
INNER JOIN person AS p ON pv.person_id = p.id
WHERE
    p.name = 'Kate'
    AND m.price BETWEEN 800 AND 1000
ORDER BY
    pizza_name,
    price,
    pizza_name;