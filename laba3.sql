-- 1
SELECT
    e."LastName" AS "Фамилия сотрудника",
    e."FirstName" AS "Имя сотрудника",
    o."OrderID" AS "Номер заказа"
FROM
    public.employees e
LEFT JOIN
    public.orders o ON e."EmployeeID" = o."EmployeeID"
ORDER BY "OrderID" desc ;


-- 2
SELECT DISTINCT
    e1."LastName" AS "Фамилия сотрудника 1",
    e2."LastName" AS "Фамилия сотрудника 2"
FROM
    public.employees e1
CROSS JOIN
    public.employees e2
WHERE
    e1."EmployeeID" < e2."EmployeeID";


-- 3
SELECT
    p."ProductName" AS "Название продукта",
    o."ShipCity" AS "Город доставки"
FROM
    public.products p
JOIN
    public.order_details od ON p."ProductID" = od."ProductID"
JOIN
    public.orders o ON od."OrderID" = o."OrderID";
