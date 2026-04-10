SELECT tc.name, SUM(tc.count) AS total_count
FROM (
    (SELECT pz.name, COUNT(*) AS count
    FROM person_visits AS pv
    JOIN pizzeria AS pz ON pz.id = pv.pizzeria_id
    GROUP BY pz.name)
    UNION ALL
    (SELECT pz.name, COUNT(*) AS count
    FROM person_order AS po
    JOIN menu AS m ON m.id = po.menu_id
    JOIN pizzeria AS pz ON pz.id = m.pizzeria_id
    GROUP BY pz.name)
) AS tc
GROUP BY tc.name
ORDER BY 2 DESC, 1 ASC;