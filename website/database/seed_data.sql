-- Note: We're inserting records with an id value set because we want to use
-- particular ids as foreign keys. I.e. setting the address_id for a student
-- so it references a specific address record. If we didn't specify a value
-- for the id columns, the database would choose an integer for us.


--CUSTOMERS
INSERT INTO customers (id, first_name, last_name, date_of_birth, email, address) VALUES (1, 'Bugs', 'Bunny', '1955-01-01', 'whatsupdoc@yahoo.com', '24 Carrot Gold Dr Belleville, IL 62221');
INSERT INTO customers (id, first_name, last_name, date_of_birth, email, address) VALUES (2, 'Daffy', 'Duck', '1963-05-23', 'rabbit_season@gmail.com', '323 Pond Ct Destin, FL 32541');
INSERT INTO customers (id, first_name, last_name, date_of_birth, email, address) VALUES (3, 'Elmer', 'Fudd', '1957-08-25', 'vewwy_quiet@protonmail.com', '1999 Hunting Rabbits Ln Clarksville, AR 72831');
INSERT INTO customers (id, first_name, last_name, date_of_birth, email, address) VALUES (4, 'Sylvester', 'Pussycat Sr.', '1960-12-11', 'sufferin_suck_my_stache@gmail.com', '4 Webster Blvd Pinehurst, NC 28374');
INSERT INTO customers (id, first_name, last_name, date_of_birth, email, address) VALUES (5, 'Tweety', 'Bird', '1965-09-16', 'im_not_a_puddy@aol.com', '4 Webster Blvd Pinehurst, NC 28374');


--ORDERS
INSERT INTO orders (id, customer_id, order_date) VALUES (1, 1, '2020-02-17');
INSERT INTO orders (id, customer_id, order_date) VALUES (2, 2, '2020-03-21');
INSERT INTO orders (id, customer_id, order_date) VALUES (3, 4, '2020-03-21');
INSERT INTO orders (id, customer_id, order_date) VALUES (4, 5, '2020-07-26');
INSERT INTO orders (id, customer_id, order_date) VALUES (5, 1, '2021-01-09');
INSERT INTO orders (id, customer_id, order_date) VALUES (6, 3, '2021-05-14');


--ORDER_PRODUCTS
INSERT INTO order_products (id, order_id, product_id, quantity) VALUES (1, 1, 8, 2);
INSERT INTO order_products (id, order_id, product_id, quantity) VALUES (2, 2, 4, 1);
INSERT INTO order_products (id, order_id, product_id, quantity) VALUES (3, 3, 5, 3);
INSERT INTO order_products (id, order_id, product_id, quantity) VALUES (4, 4, 10, 1);
INSERT INTO order_products (id, order_id, product_id, quantity) VALUES (5, 5, 7, 2);
INSERT INTO order_products (id, order_id, product_id, quantity) VALUES (6, 6, 1, 1);


--PRODUCTS
-- Home Decor
INSERT INTO products (id, name, category, price) VALUES (1, 'cowch', 1, 1999);
INSERT INTO products (id, name, category, price) VALUES (2, 'spongebob', 1, 1299);
INSERT INTO products (id, name, category, price) VALUES (3, 'tiger_couch', 1, 2499);
INSERT INTO products (id, name, category, price) VALUES (4, 'shoe', 1, 1199);
--Kitchen
INSERT INTO products (id, name, category, price) VALUES (5, 'chicken', 2, 29);
INSERT INTO products (id, name, category, price) VALUES (6, 'toaster', 2, 69);
INSERT INTO products (id, name, category, price) VALUES (7, 'tacosaurus', 2, 19);
--Bed and Bath
INSERT INTO products (id, name, category, price) VALUES (8, 'squirrel', 3, 59);
INSERT INTO products (id, name, category, price) VALUES (9, 'jesus_brush', 3, 19);
INSERT INTO products (id, name, category, price) VALUES (10, 'tp_hat', 3, 19);

--CATEGORIES
INSERT INTO categories (id, name) VALUES (1, 'home');
INSERT INTO categories (id, name) VALUES (2, 'kitchen');
INSERT INTO categories (id, name) VALUES (3, 'bed_bath');


-- Because we've inserted rows with hardcoded values for the primary key, id
-- the sequence used to generate id values for new rows is stuck at "1". So
-- we manually reset the sequences to the max value of id for each table.
SELECT setval('customers_id_seq', (SELECT MAX(id) FROM customers));
SELECT setval('orders_id_seq', (SELECT MAX(id) FROM orders));
SELECT setval('order_products_id_seq', (SELECT MAX(id) FROM order_products));



