WITH female_visits AS (
    SELECT pz.name AS pizzeria_name
    FROM pizzeria AS pz
    JOIN person_visits AS pv ON pz.id = pv.pizzeria_id
    JOIN person AS p ON pv.person_id = p.id
    WHERE p.gender = 'female'
),
male_visits AS (
    SELECT pz.name AS pizzeria_name
    FROM pizzeria AS pz
    JOIN person_visits AS pv ON pz.id = pv.pizzeria_id
    JOIN person AS p ON pv.person_id = p.id
    WHERE p.gender = 'male'
)
(SELECT pizzeria_name
FROM female_visits
EXCEPT ALL
SELECT pizzeria_name
FROM male_visits)
UNION ALL
(SELECT pizzeria_name
FROM male_visits
EXCEPT ALL
SELECT pizzeria_name
FROM female_visits)
ORDER BY pizzeria_name;