-- Note: We're inserting records with an id value set because we want to use
-- particular ids as foreign keys. I.e. setting the address_id for a student
-- so it references a specific address record. If we didn't specify a value
-- for the id columns, the database would choose an integer for us.



INSERT INTO customers (id, address_id, first_name, last_name, email) VALUES (1, 1, 'Bugs', 'Bunny', 'whatsupdoc@yahoo.com');
INSERT INTO customers (id, address_id, first_name, last_name, email) VALUES (2, 2, 'Daffy', 'Duck', 'rabbit_season@gmail.com');
INSERT INTO customers (id, address_id, first_name, last_name, email) VALUES (3, 3, 'Elmer', 'Fudd', 'vewwy_quiet@protonmail.com');
INSERT INTO customers (id, address_id, first_name, last_name, email) VALUES (4, 4, 'Sylvester', 'Pussycat Sr.', 'sufferin_suck_my_stache@gmail.com');
INSERT INTO customers (id, address_id, first_name, last_name, email) VALUES (5, 4, 'Tweety', 'Bird', 'im_not_a_puddy@aol.com');


--PURCHASES
INSERT INTO purchases (id, user_id, order_date, order_item_name, order_item_cost) VALUES (1, 1, '2020-02-17', 'tacosaurus', 19.99);
INSERT INTO purchases (id, user_id, order_date, order_item_name, order_item_cost) VALUES (2, 2, '2020-03-21', 'toaster', 69.99);
INSERT INTO purchases (id, user_id, order_date, order_item_name, order_item_cost) VALUES (3, 2, '2020-03-21', 'squirrel', 59.99);
INSERT INTO purchases (id, user_id, order_date, order_item_name, order_item_cost) VALUES (4, 3, '2020-07-26', 'tiger_couch', 2499.99);
INSERT INTO purchases (id, user_id, order_date, order_item_name, order_item_cost) VALUES (5, 4, '2021-01-09', 'toaster', 69.99);
INSERT INTO purchases (id, user_id, order_date, order_item_name, order_item_cost) VALUES (6, 5, '2021-05-14', 'chicken', 29.99);


--ADDRESSES
INSERT INTO addresses (id, street, city, state_name, zip) VALUES (1, '24 Carrot Gold Dr', 'Belleville', 'IL', 62221);
INSERT INTO addresses (id, street, city, state_name, zip) VALUES (2, '323 Pond Ct', 'Destin', 'FL', 32541);
INSERT INTO addresses (id, street, city, state_name, zip) VALUES (3, '1999 Hunting Rabbits Ln', 'Clarksville', 'AR', 72831);
INSERT INTO addresses (id, street, city, state_name, zip) VALUES (4, '4 Webster Blvd', 'Pinehurst', 'NC', 28374);


-- Home Decor
INSERT INTO items (id, item_name, category, price) VALUES (1, 'cowch', 'home', 1999.99);
INSERT INTO items (id, item_name, category, price) VALUES (2, 'spongebob', 'home', 1299.99);
INSERT INTO items (id, item_name, category, price) VALUES (3, 'tiger_couch', 'home', 2499.99);
INSERT INTO items (id, item_name, category, price) VALUES (4, 'shoe', 'home', 1199.99);

--Kitchen
INSERT INTO items (id, item_name, category, price) VALUES (5, 'chicken', 'kitchen', 29.99);
INSERT INTO items (id, item_name, category, price) VALUES (6, 'toaster', 'kitchen', 69.99);
INSERT INTO items (id, item_name, category, price) VALUES (7, 'tacosaurus', 'kitchen', 19.99);

--Bed and Bath
INSERT INTO items (id, item_name, category, price) VALUES (8, 'squirrel', 'bed_bath', 59.99);
INSERT INTO items (id, item_name, category, price) VALUES (9, 'jesus_brush', 'bed_bath', 19.99);
INSERT INTO items (id, item_name, category, price) VALUES (10, 'tp_hat', 'bed_bath', 19.99);




-- Because we've inserted rows with hardcoded values for the primary key, id
-- the sequence used to generate id values for new rows is stuck at "1". So
-- we manually reset the sequences to the max value of id for each table.
SELECT setval('customers_id_seq', (SELECT MAX(id) FROM customers));
SELECT setval('addresses_id_seq', (SELECT MAX(id) FROM addresses));
SELECT setval('purchases_id_seq', (SELECT MAX(id) FROM purchases));



