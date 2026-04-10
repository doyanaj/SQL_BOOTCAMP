INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT
    gs.id AS id,
    p.id AS person_id,
    (SELECT id FROM menu WHERE pizza_name = 'greek pizza') AS menu_id,
    '2022-02-25' AS order_date
FROM person AS p
JOIN
    generate_series(
        (SELECT MAX(id) + 1 FROM person_order),
        (SELECT MAX(id) + (SELECT COUNT(*) FROM person) FROM person_order)
    ) AS gs(id)
ON gs.id = (SELECT MAX(id) FROM person_order) + p.id;