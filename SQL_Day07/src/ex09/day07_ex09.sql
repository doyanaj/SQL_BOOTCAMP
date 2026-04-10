SELECT
    p.address,
    ROUND(MAX(p.age) - (MIN(p.age)::numeric / MAX(p.age)), 2) AS formula,
    ROUND(AVG(p.age), 2) AS average,
    ROUND(MAX(p.age) - (MIN(p.age)::numeric / MAX(p.age)), 2) > ROUND(AVG(p.age), 2) AS comparison
FROM person AS p
GROUP BY p.address
ORDER BY 1;