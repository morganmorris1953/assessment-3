--Retrieve the first name, last name, and email address of all customers that have a Gmail email address.
select first_name, last_name, email from customers
where email ilike '%gmail%';

--Retrieve the address of the customers and the order IDs for all orders that were placed in 2020

select 
    addresses.*,
    purchases.id order_id
from 
    customers cust
    inner join purchases on purchases.user_id=cust.id
    inner join addresses on addresses.id=cust.address_id
where extract(year from purchases.order_date) = 2020;

-- Retrieve all product details for products that are under the "Kitchen" category
select * from items
where category ilike ('kitchen');

-- Retrieve the product names and prices of all products ordered by the customer with first name "Bugs" and last name "Bunny"

select 
    items.item_name,
    items.price
from 
    customers cust
    inner join purchases on purchases.user_id=cust.id
    inner join items on purchases.order_item_name=items.item_name
where first_name like 'Bugs' and last_name like 'Bunny';