CREATE TABLE if not exists public.customer_orders
(
    "OrderID" smallint not null
        constraint pk_customer_orders
            primary key,
    "CustomerID" bpchar not null,
    "OrderDate" date not null,
    "TotalAmount" real not null,
    constraint fk_customer_orders_customers
        foreign key ("CustomerID") references public.customers("CustomerID")
);

CREATE TABLE if not exists public.product_reviews
(
    "ReviewID" serial not null
        constraint pk_product_reviews
            primary key,
    "ProductID" smallint not null,
    "CustomerID" bpchar not null,
    "ReviewText" text,
    "Rating" smallint check ("Rating" >= 1 and "Rating" <= 5),
    constraint fk_product_reviews_products
        foreign key ("ProductID") references public.products("ProductID"),
    constraint fk_product_reviews_customers
        foreign key ("CustomerID") references public.customers("CustomerID")
);

