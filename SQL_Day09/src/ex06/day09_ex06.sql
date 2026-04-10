CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date(
    pperson VARCHAR DEFAULT 'Dmitriy',
    pprice NUMERIC DEFAULT 500,
    pdate DATE DEFAULT '2022-01-08'
)
RETURNS TABLE (
    name VARCHAR
) AS $$
BEGIN
    RETURN QUERY
    SELECT DISTINCT pz.name
    FROM pizzeria AS pz
    JOIN menu AS m ON pz.id = m.pizzeria_id
    JOIN person_visits AS pv ON pz.id = pv.pizzeria_id
    JOIN person AS p ON pv.person_id = p.id
    WHERE p.name = pperson
      AND m.price < pprice
      AND pv.visit_date = pdate;
END;
$$ LANGUAGE plpgsql;

SELECT *  
FROM fnc_person_visits_and_eats_on_date(pprice := 800);

SELECT *  
FROM fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');