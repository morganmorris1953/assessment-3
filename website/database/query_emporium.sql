--Retrieve the first name, last name, and email address of all customers that have a Gmail email address.
select first_name, last_name, email from customers
where email ilike '%gmail%';

--Retrieve the address of the customers and the order IDs for all orders that were placed in 2020

select 
    address,
    orders.id
FROM
    customers cust
    inner join orders on orders.customer_id=cust.id
where extract(year from orders.order_date) = 2020;


-- Retrieve all product details for products that are under the "Kitchen" category
select products.* 
from 
    categories
    inner join products on (products.category=categories.id)
where categories.name ilike ('kitchen');

-- Retrieve the product names and prices of all products ordered by the customer with first name "Bugs" and last name "Bunny"


select p.name, p.price
from orders o 
    join order_products op on o.id = op.order_id
    join products p on p.id = op.product_id 
    join customers c on o.customer_id = c.id 
where c.first_name = 'Bugs' and c.last_name = 'Bunny';

