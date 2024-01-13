--DIFFERENCE BETWEEN INNER JOIN AND INTERSECT

DROP TABLE IF EXISTS temp.a; 
CREATE TEMP TABLE IF NOT EXISTS temp.a (id INT);
DROP TABLE IF EXISTS temp.b; 
CREATE TEMP TABLE IF NOT EXISTS temp.b (id INT);

INSERT INTO temp.a VALUES (1), (NULL), (2);
INSERT INTO temp.b VALUES (1), (NULL), (3), (1);

SELECT * FROM a;
SELECT * FROM b;

-- WITH DUPLICATE, WITHOUT NULL
SELECT a.id FROM a a
INNER JOIN b b ON a.id = b.id;

-- WITHOUT DUPLICATES, WITH NULL
SELECT id FROM a
INTERSECT
SELECT id FROM b;

--NOT IN B THAT IS IN A RESULTS in 2 because 2 not in table b
SELECT id FROM a
EXCEPT
SELECT id FROM b;

--NOT IN A THAT IS IN B RESULTS in 3 because 3 not in table a
SELECT id FROM b
EXCEPT
SELECT id FROM a;
