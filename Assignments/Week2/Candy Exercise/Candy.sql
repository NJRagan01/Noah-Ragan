CREATE TABLE inventory (
	"id"           int PRIMARY KEY,
	"name"         varchar(40),
	"price"        float,
	"description"  varchar(255),
	"quantity"     int
);

------------------------------------------------------------------------------------------------------

INSERT INTO inventory 
VALUES
(1001,	'Hershey Bar',	    3.45,	'A small chocolate bar',	                    50),
(1002,	'Skittles',	        3.05,	'A bag of rainbow colored candies',	            100),
(2003,	'Gummy Bears',	    5.55,	'A large bag of chewy fruit-flavored bears',	48),
(2005,	'Sour Gummy Worms',	9.55,	'A very large bag of gelatin worms',	        20),
(3008,	'Lollipop',	        2.25,	'A hard candy atop a stick',	                268),
(9007,	'M&Ms',	            1.95,	'A bag of small chocolate candies',	            58);

------------------------------------------------------------------------------------------------------

SELECT * FROM inventory;

------------------------------------------------------------------------------------------------------

UPDATE inventory SET "quantity" = 48 WHERE "name" = 'Hershey Bar';

------------------------------------------------------------------------------------------------------

SELECT "description" FROM inventory;

------------------------------------------------------------------------------------------------------

SELECT "name", "price"
FROM inventory;

------------------------------------------------------------------------------------------------------

UPDATE inventory SET "description" = 'A very large, delicious bag of worms' WHERE "name" = 'Sour Gummy Worms';

------------------------------------------------------------------------------------------------------

UPDATE inventory SET "quantity" = 100 WHERE "name" = 'M&Ms';

------------------------------------------------------------------------------------------------------

UPDATE inventory SET "price" = 2.50 WHERE "id" = 3008;

------------------------------------------------------------------------------------------------------

CREATE TABLE employees (
	"id"             int PRIMARY KEY,
	"name"           varchar(32),
	"favorite_candy" int REFERENCES inventory
);

------------------------------------------------------------------------------------------------------

INSERT INTO employees
VALUES
	(4001,	'Willy Wonka',	    2005),
	(4002,	'Milton Hershey',	1001),
	(4003,	'Franklin Mars',	9007),
	(4004,	'John Cadbury',	    NULL);

------------------------------------------------------------------------------------------------------

SELECT e."name", i."name"
FROM employees e
JOIN inventory i ON e."favorite_candy" = i."id";

------------------------------------------------------------------------------------------------------

SELECT i."name", e."name"
FROM inventory i
RIGHT JOIN employees e ON i."id" = e."favorite_candy";

-- Bonus Questions: ----------------------------------------------------------------------------------


SELECT SUM("price" * "quantity")
FROM inventory
WHERE "name" = 'M&Ms';

------------------------------------------------------------------------------------------------------

SELECT "name", "price"
FROM inventory
ORDER BY "price" DESC
LIMIT 1;

------------------------------------------------------------------------------------------------------

SELECT "name", "quantity"
FROM inventory
ORDER BY "quantity"
LIMIT 1;

------------------------------------------------------------------------------------------------------

SELECT * FROM inventory
ORDER BY "price"
LIMIT 3;

-- I wasn't able to figure out 18-20 >:(


