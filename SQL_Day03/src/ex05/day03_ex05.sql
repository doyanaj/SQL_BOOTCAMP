SELECT pz.name AS pizzeria_name
FROM pizzeria AS pz
JOIN person_visits AS pv ON pz.id = pv.pizzeria_id
JOIN person AS p ON pv.person_id = p.id
WHERE p.name = 'Andrey'
EXCEPT
SELECT pz.name AS pizzeria_name
FROM pizzeria AS pz
JOIN menu AS m ON pz.id = m.pizzeria_id
JOIN person_order AS po ON m.id = po.menu_id
JOIN person AS p ON po.person_id = p.id
WHERE p.name = 'Andrey'
ORDER BY pizzeria_name;