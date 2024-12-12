ALTER TABLE public.orders
    ADD CONSTRAINT fk_orders_customers
        FOREIGN KEY ("CustomerID") REFERENCES public.customers("CustomerID");

ALTER TABLE public.orders
    ADD CONSTRAINT fk_orders_employees
        FOREIGN KEY ("EmployeeID") REFERENCES public.employees("EmployeeID");

ALTER TABLE public.order_details
    ADD CONSTRAINT fk_order_details_orders
        FOREIGN KEY ("OrderID") REFERENCES public.orders("OrderID");

ALTER TABLE public.order_details
    ADD CONSTRAINT fk_order_details_products
        FOREIGN KEY ("ProductID") REFERENCES public.products("ProductID");
