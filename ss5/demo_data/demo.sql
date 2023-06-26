create database product;
use product;
CREATE TABLE `products` (
  `product_code` INT NOT NULL AUTO_INCREMENT,
  `name_product` VARCHAR(45) NOT NULL,
  `	Description_product` VARCHAR(45) NOT NULL,
  `price` VARCHAR(45) NOT NULL,
  `status` INT NOT NULL,
  PRIMARY KEY (`product_code`));
  CREATE TABLE `product`.`account` (
  `account_id` INT NOT NULL AUTO_INCREMENT,
  `account_name` VARCHAR(45) NOT NULL,
  `account_password` VARCHAR(45) NOT NULL,
  `account_email` VARCHAR(45) NOT NULL,
  `account_role` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`account_id`));