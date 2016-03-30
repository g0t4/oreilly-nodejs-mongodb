drop database chatapp;
create database chatapp;
use chatapp;



CREATE TABLE `chatapp`.`rooms` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));


CREATE TABLE `chatapp`.`messages` (
  `id` INT NOT NULL,
  `room_id` INT NULL,
  `user_id` INT NULL,
  `text` TEXT NULL,
  PRIMARY KEY (`id`));



CREATE TABLE `chatapp`.`users` (
  `id` INT NOT NULL,
  `alias` VARCHAR(45) NULL,
  `phone` VARCHAR(100) NULL,
  `email` VARCHAR(100) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `chatapp`.`user_roles` (
  `user_id` INT NOT NULL,
  `role` VARCHAR(20) NOT NULL);

CREATE TABLE `chatapp`.`user_addresses` (
  `id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `line1` TINYTEXT NULL,
  `line2` TINYTEXT NULL,
  `line3` TINYTEXT NULL,
  `city` varchar(50) NULL,
  `state` varchar(20) NULL,
  `zip` varchar(20) NULL,
  PRIMARY KEY (`id`));
  
  insert into users (id, alias, phone, email) values (1, 'wes', '(477) 838-0798', 'wes@email.com');
  insert into users (id, alias, phone, email) values (2, 'pax', '(837) 838-6236', 'pax@email.com');
  
  
  insert into user_roles (user_id, role) values (1, 'admin');
  insert into user_roles (user_id, role) values (2, 'moderator');
  
  insert into user_addresses (id, user_id, line1, line2, city, state, zip) values (1, 1,"3939 Rondorp Ridge", "Apt 65", "New York", "NY", "10098");
  insert into user_addresses (id, user_id, line1, line2, city, state, zip) values (2, 2,"1 Apache Road", "Suite 301", "Seattle", "WA", "98765");
  
  
  