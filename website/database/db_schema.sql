-- Part I: Back-end Database
-- Your database should be designed to store customer, product, category, and order information. We are going to ask you to complete the following three items:

-- database/schema.sql:
-- SQL containing the schema design for your database (tables and relationships)
-- database/seeds.sql:
-- SQL containing the seed data to populate your database tables
-- database/queries.sql:
-- SQL containing queries to extract the following data from your database tables:
-- Retrieve the first name, last name, and email address of all customers that have a Gmail email address.
-- Retrieve the address of the customers and the order IDs for all orders that were placed in 2020
-- Retrieve all product details for products that are under the "Kitchen" category
-- Retrieve the product names and prices of all products ordered by the customer with first name "Bugs" and last name "Bunny"


DROP TABLE IF EXISTS customers CASCADE;
CREATE TABLE customers (
  id           serial primary key,
  first_name   varchar(255) NOT NULL,
  last_name    varchar(255) NOT NULL,
  date_of_birth DATE,
  email      varchar(255) NOT NULL,
  address     VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS orders CASCADE;
CREATE TABLE orders (
  id           serial PRIMARY KEY,
  customer_id   integer references customers(id),
  order_date    DATE
);

DROP TABLE IF EXISTS order_products CASCADE;
CREATE TABLE order_products (
  id    serial primary key, 
  order_id integer references orders(id),
  product_id integer references products(id),
  quantity  integer
);

DROP TABLE IF EXISTS products CASCADE;
CREATE TABLE products (
  id   integer PRIMARY KEY REFERENCES categories(id),
  name        varchar(255) NOT NULL,
  category    integer NOT NULL,
  price       integer not null
);

DROP TABLE IF EXISTS categories CASCADE;
CREATE TABLE categories (
  id           integer primary KEY,
  name        varchar(255) NOT NULL
);





