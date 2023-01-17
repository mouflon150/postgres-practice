package task_1;

--- 1 ---
SELECT first_name, country
FROM peoples
WHERE first_name LIKE 'D%' OR first_name LIKE 'T%';

--- 2 ---
SELECT last_name
FROM peoples
ORDER BY money DESC
LIMIT 10;

--- 3 ---
SELECT first_name, city
FROM peoples
WHERE country = 'China';

--- 4 ---
SELECT first_name, last_name, country
FROM peoples
WHERE country = 'China' OR country = 'Brazil';

--- 5 ---
SELECT count(*) AS peoples_count
FROM peoples;

--- 6 ---
SELECT count(*) AS peoples_in_Russia
FROM peoples
WHERE country = 'Russia';

--- 7 ---
SELECT first_name, last_name, gender
FROM peoples
WHERE gender <> 'Male' AND gender <> 'Female';

--- 8 ---
SELECT first_name, last_name, birth_day
FROM peoples
ORDER BY birth_day
LIMIT 1;

--- 9 ---

--- 10 ---
SELECT first_name, last_name, birth_day
FROM peoples
ORDER BY birth_day DESC
LIMIT 7;

--- 11 ---
SELECT first_name, last_name, weight, country
FROM peoples
WHERE country = 'Portugal'
ORDER BY weight DESC
LIMIT 5;

--- 12 ---
SELECT first_name, last_name, height, country
FROM peoples
WHERE country = 'Argentina'
ORDER BY height DESC
LIMIT 5;

--- 13 ---
SELECT first_name, last_name, birth_day, married
FROM peoples
WHERE married = 'false'
ORDER BY birth_day
LIMIT 1;

--- 14 ---
SELECT first_name, last_name, weight, married
FROM peoples
WHERE married = 'true'
ORDER BY weight DESC
LIMIT 1;

--- 15 ---
SELECT first_name, last_name, email
FROM peoples
WHERE email  LIKE '%uk';

--- 16 ---
SELECT first_name, last_name, money
FROM peoples
WHERE country = 'Sweden'
ORDER BY money
LIMIT 1;

--- 17 ---
SELECT first_name, last_name
FROM peoples
WHERE first_name LIKE '%s' OR last_name LIKE '%s';

--- 18 ---
SELECT sum(money)
FROM peoples;

--- 19 ---
SELECT country, count(*)
FROM peoples
GROUP BY country
HAVING count(*) >= 100;

--- 20 ---
SELECT country, count(*)
FROM peoples
GROUP BY country
HAVING count(*) = 1;
--- 21 ---
SELECT first_name, last_name, country
FROM peoples
WHERE country <> 'Brazil';

--- 22 ---
SELECT sum(money)
FROM peoples
WHERE country = 'Kenya';

--- 23 ---
SELECT max(height)
FROM peoples
WHERE country = 'Japan';

--- 24 ---
SELECT country
FROM peoples
WHERE money = (SELECT max(money)
               FROM peoples);

--- 25 ---
SELECT first_name, last_name, gender
FROM peoples
WHERE gender = 'Female'
ORDER BY height DESC
LIMIT 10;

--- 26 ---
SELECT first_name, last_name, gender
FROM peoples
WHERE gender = 'Male'
ORDER BY weight DESC
LIMIT 20;

--- 27 ---
SELECT country, count(*)
FROM peoples
WHERE married = 'false'
GROUP BY country
ORDER BY count(*) DESC
LIMIT 1;

--- 28 ---
SELECT country, count(*)
FROM peoples
WHERE married = 'true'
GROUP BY country
ORDER BY count(*) DESC
LIMIT 1;

--- 29 ---
SELECT first_name, last_name, money
FROM peoples
WHERE money = (SELECT avg(money)
               FROM peoples);

--- 30 ---

