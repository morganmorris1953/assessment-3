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


DROP TABLE IF EXISTS customers cascade;
CREATE TABLE customers (
  id           serial primary key,
  address_id    integer references addresses(id),
  first_name   varchar(255) NOT NULL,
  last_name    varchar(255) NOT NULL,
  email      varchar(255) NOT NULL
);

DROP TABLE IF EXISTS purchases cascade;
CREATE TABLE purchases (
  id    serial primary key, 
  user_id integer references customers(id),
  order_date  DATE NOT NULL, 
  order_item_name    varchar(255) NOT NULL, 
  order_item_cost    DECIMAL
);

DROP TABLE IF EXISTS items;
CREATE TABLE items (
  id           integer PRIMARY KEY,
  item_name   varchar(255) NOT NULL,
  category    varchar(255) NOT NULL,
  price       DECIMAL not null
);

DROP TABLE IF EXISTS addresses cascade;
CREATE TABLE addresses (
  id           serial PRIMARY KEY,
  street   varchar(255) NOT NULL,
  city    varchar(255) NOT NULL,
  state_name    varchar(255) NOT NULL,
  zip       INTEGER not null
);