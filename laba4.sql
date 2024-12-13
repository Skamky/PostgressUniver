-- 1
SELECT
    SUM(od."Quantity") AS "Общее количество товаров в регионе RJ"
FROM
    public.orders o
JOIN
    public.order_details od ON o."OrderID" = od."OrderID"
WHERE
    o."ShipRegion" = 'RJ';
-- 2
SELECT
    o."ShipCity" AS "Город",
    SUM(od."Quantity") AS "Общее количество товаров"
FROM
    public.orders o
JOIN
    public.order_details od ON o."OrderID" = od."OrderID"
GROUP BY
    o."ShipCity"
ORDER BY
    SUM(od."Quantity") DESC
LIMIT 1;
-- 3
SELECT
    c."CompanyName" ,
    e."FirstName" ,
    e."LastName",
    COUNT(o."OrderID") AS "Количество доставок"
FROM
    public.orders o
JOIN
    public.customers c ON o."CustomerID" = c."CustomerID"
JOIN
    public.employees e ON o."EmployeeID" = e."EmployeeID"
WHERE
    c."CompanyName" = 'Island Trading'
    AND e."FirstName" = 'Laura'
    AND e."LastName" = 'Callahan'
GROUP BY
    c."CompanyName", e."FirstName", e."LastName";
