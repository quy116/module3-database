create database bai_2;
use bai_2;
CREATE TABLE customer (
    customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(55),
    customer_age INT
);

CREATE TABLE `order` (
    order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_total_price BIGINT,
    FOREIGN KEY (customer_id)
        REFERENCES customer (customer_id)
);

CREATE TABLE product (
    product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(55),
    product_price BIGINT
);

CREATE TABLE order_detail (
    order_id INT,
    product_id INT,
    oder_quantity INT,
    FOREIGN KEY (order_id)
        REFERENCES `order` (order_id),
    FOREIGN KEY (product_id)
        REFERENCES product (product_id),
    PRIMARY KEY (order_id , product_id)
);
insert into customer
values
(1,"Minh Quân",10),
(2,"Ngoc Oanh", 20),
(3,"Hong Ha",50);
insert into `order`
values
(1,1,"2006-03-21",null),
(2,2,"2006-03-23",null),
(3,1,"2006-03-16",null);
insert into product
values
(1,"May Giat",3),
(2,"Tu Lanh",5),
(3,"Dieu Hoa",7),
(4,"Quat",1),
(5,"Bep Dien",2);
insert into order_detail
values
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);
select order_id, order_date,  order_total_price from `order` ;
select customer_name from customer
join `order` on customer.customer_id = `order`.customer_id
group by customer.customer_id;

select customer.customer_name, product.product_name
from customer
 JOIN `order` ON customer.customer_id = `order`.customer_id
 JOIN order_detail ON `order`.order_id = order_detail.order_id
 JOIN product ON order_detail.product_id = product.product_id
ORDER BY customer.customer_id;


select customer.customer_name 
from customer
left join `order` on customer.customer_id = `order`.customer_id
where `order`.customer_id is null;


SELECT `order`.order_id, `order`.order_date,
       SUM(order_detail.oder_quantity * product.product_price) AS total_price
FROM `order`
LEFT JOIN order_detail ON `order`.order_id = order_detail.order_id
LEFT JOIN product ON order_detail.product_id = product.product_id
GROUP BY `order`.order_id, `order`.order_date;


