COMMENT ON TABLE person_discounts IS 'Table of personal discounts for specific customers in specific pizzerias';
COMMENT ON COLUMN person_discounts.id IS 'Unique identifier for the discount (Primary Key)';
COMMENT ON COLUMN person_discounts.person_id IS 'Foreign key referencing the customer who receives the discount';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Foreign key referencing the pizzeria where the discount applies';
COMMENT ON COLUMN person_discounts.discount IS 'The discount value in percent (ranges from 0 to 100)';