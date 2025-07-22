use classicmodels;

show tables;

select customername, city from customers;
select customername, creditlimit from customers order by creditlimit desc;
select * from customers where country ='usa';

select distinct country from customers;

select customername from customers where country in('usa', 'france','germany');

select * from customers where country='france';

select customername from customers where customername like 'r%';

select *from products limit 2500;

select customername from customers where salesrepemployeenumber is null;

select customername AS name, creditlimit as limit from customers;

select c.customername, e.firstname
from customers c
join employees e on c.salesrepemployeenumber=e.employeenumber;

select c.customer.name , o.city
from customers c
left join offices o on o.officecode='1';

select c.customer.name , o.city
from customers c
right join offices o on o.officecode='1';

select e.firstname,o.city
from employees e
cross join offices o;

select e.firstname AS employee, m.firstname AS manager
from employees e
join employees m ON e.reportsto = m.employeenumber;

select country, count(*) from customers group by country;

select country, count(*) as customercount
from customers
group by country
having customercount>5;

select customername
from customers 
where salesrepemployeenumber=(select employeenumber from employees where firstname='leslie');

select city from customers
union
select city from offices;

select city from customers
where city not in (select city from offices);

select city from customers
where city in (select city from offices);

