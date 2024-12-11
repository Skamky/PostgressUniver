-- 1. Запрос, с помощью которого можно получить пользователей из таблицы Customers, имена которых начинаются на «B».
SELECT * FROM customers
WHERE "ContactName" LIKE 'B%';

-- 2. Запрос, с помощью которого можно получить товары из таблицы Products, название которых начинается на «M» и заканчивается на «i»:
SELECT * FROM products WHERE "ProductName" LIKE 'M%i';


-- 4 Запрос, получающий год из даты 27.06.2024:
SELECT EXTRACT(YEAR FROM DATE '2024-06-27') AS year;


-- 5 Запрос, получающий число из даты 27.06.2024:
SELECT EXTRACT(DAY FROM DATE '2024-06-27') AS day;


-- 6. Запрос, получающий месяц и год из даты 27.06.2024:
SELECT EXTRACT(MONTH FROM DATE '2024-06-27') AS month,
       EXTRACT(YEAR FROM DATE '2024-06-27') AS year;



-- 7. Запрос, получающий текущую дату:
SELECT CURRENT_DATE AS today;




--3. Запрос, который заменяет первую букву имени на «X» у пользователей из таблицы Employees с именами на «A»: FirstName
UPDATE Employees
SET "FirstName" = 'X' || SUBSTRING("FirstName" FROM 2)
WHERE "FirstName" LIKE 'A%';


