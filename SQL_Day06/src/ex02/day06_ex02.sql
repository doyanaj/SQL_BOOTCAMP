SELECT
    p.name,
    m.pizza_name,
    m.price,
    ROUND(m.price - (m.price * pd.discount / 100), 1) AS discount_price,
    pz.name AS pizzeria_name
FROM person_order AS po
JOIN menu AS m ON po.menu_id = m.id
JOIN person AS p ON po.person_id = p.id
JOIN person_discounts AS pd ON p.id = pd.person_id AND m.pizzeria_id = pd.pizzeria_id
JOIN pizzeria AS pz ON m.pizzeria_id = pz.id
ORDER BY 1, 2;