--1. Get all customers and addresses
SELECT * FROM "customers"
FULL OUTER JOIN "addresses" ON "customers"."id" = "customer_id";

--2. Get all borders and their line items
SELECT * FROM "orders"
LEFT OUTER JOIN "line_items" ON "order_id" = "orders"."id";

--3. Which warehouses have cheetos?
SELECT * FROM "warehouse_product"
FULL OUTER JOIN "products" ON "products"."id" = "product_id"
FULL OUTER JOIN "warehouse" ON "warehouse"."id" = "warehouse_id"
WHERE "description" = 'cheetos';

--4.  Which warehouses have diet pepsi?
SELECT * FROM "warehouse_product"
JOIN "products" ON "products"."id" = "product_id"
JOIN "warehouse" ON "warehouse"."id" = "warehouse_id"
WHERE "description" = 'diet pepsi';

--5. Number of orders for each customers?
SELECT COUNT(*) FROM "orders"
JOIN "addresses" ON "addresses"."id" = "address_id"
JOIN "customers" ON "customers"."id" = "customer_id";

--6. How many customers do we have?
SELECT COUNT(*) FROM "customers";

--7. How many products do we carry?
SELECT COUNT('description') FROM "products";

--8. What is the total available on-hand quantity of diet pepsi?
SELECT SUM ("on_hand") FROM "products"
JOIN "warehouse_product" ON "products"."id" = "product_id"
WHERE "description" = 'diet pepsi';

