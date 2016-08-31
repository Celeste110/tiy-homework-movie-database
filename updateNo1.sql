--- This query fixes a typo in one of the country names

UPDATE country_list
SET country_name = 'Australia'
WHERE country_id = 8;