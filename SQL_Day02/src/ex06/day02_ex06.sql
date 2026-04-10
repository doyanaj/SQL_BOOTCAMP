SELECT m.pizza_name, pz.name AS pizzeria_name
FROM person_order AS po
INNER JOIN person AS p ON po.person_id = p.id
INNER JOIN menu AS m ON po.menu_id = m.id
INNER JOIN pizzeria AS pz ON m.pizzeria_id = pz.id
WHERE p.name IN ('Denis', 'Anna')
ORDER BY pizza_name, pizzeria_name;