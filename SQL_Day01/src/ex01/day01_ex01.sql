SELECT name AS object_name
FROM (
    SELECT name, 1 AS sort_group
    FROM person
    UNION ALL
    SELECT pizza_name, 2 AS sort_group
    FROM menu
) AS pm
ORDER BY sort_group, object_name;