create database Products;
use products;
create table Product(
id int primary key auto_increment not null,
product_Code varchar(50) not null,
product_Name varchar(50) not null,
product_Price double not null,
product_Amount int not null,
product_Description varchar(50),
productStatus varchar(50)
);
CREATE UNIQUE INDEX idx_product_Code ON Product (product_Code);

create index ten 
on Product(product_Name,product_Price);
explain select * from Product where product_code = 3;
-- create view product_view as 
-- select product_Code, product_Name, product_Price, productStatus from Product;

-- create or replace view product_view as 
-- select * from product;
-- drop view product_view;
delimiter //
create procedure product_get_all ();
begin
select * from Product
end;
delimiter ;
delimiter //
create procedure product_add (in new_product_Code varchar(50),
in new_product_Name varchar(50),
in new_product_Price double,
in new_product_Amount int,
in new_product_Description varchar(50),	
in new_productStatus varchar(50)
)
begin
insert into Product(product_Name,product_Price,product_Amount,product_Description,productStatus)
values ( new_product_Name,new_product_Price,new_product_Amount,new_product_Description,new_productStatus);
end
// delimiter ;
call product_add ("thanh",1,1,1,"cho cuong", "con hang");
select * from Product;

delimiter //
create procedure product_edit(in new_product_Code varchar(50), in new_id int)
begin 
set sql_safe_updates = 0;
update product
set Product.Product_code = new_product_Code
where product.id = new_id;
end 
// delimiter ;
call product_edit("123",1);

delimiter //
create procedure  product_delete(in new_id int)
begin
set sql_safe_updates = 0;
delete  from Product 
where new_id = Product.id;
end 
// delimiter ;
call product_delete(1);
