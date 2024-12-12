-- 5
SELECT *
FROM public.orders
WHERE EXTRACT(YEAR FROM "OrderDate") = 1997;
-- 6
SELECT "FirstName", "LastName"
FROM public.employees
WHERE EXTRACT(MONTH FROM "BirthDate") = 1;
