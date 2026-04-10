SELECT pz.name AS pizzeria_name
FROM pizzeria AS pz
INNER JOIN menu AS m ON pz.id = m.pizzeria_id
INNER JOIN person_visits AS pv ON pz.id = pv.pizzeria_id
INNER JOIN person AS p ON pv.person_id = p.id
WHERE
    p.name = 'Dmitriy'
    AND pv.visit_date = '2022-01-08'
    AND m.price < 800;