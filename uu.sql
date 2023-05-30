 create database uu;
use uu;
create table usuario(
user_id INT primary key auto_increment,
user_firstname VARCHAR(40) not null,
user_lastname VARCHAR(40) not null, 
user_email VARCHAR(60) not null,
 user_password VARBINARY(256)
);


INSERT INTO  uu.usuario (user_firstname, user_lastname, user_email, user_password)
VALUES (UPPER('oscar'), UPPER('laverde'), 'oscar@gmail.com',
AES_ENCRYPT('Oscardaniel1025@','$2a$04$UenXdfxntJks59B24ZDtUef4R19PbI/YJyGVvE5nKNQz7QCmnfcMu'));
SELECT con AES_DECRYPt;
SELECT *, 
CAST(AES_DECRYPT(user_password,
'$2a$04$UenXdfxntJks59B24ZDtUef4R19PbI/YJyGVvE5nKNQz7QCmnfcMu') AS CHAR(50))
end_data FROM usuario WHERE user_id = 1;

select * from categories;
Create table categories(
category_id int primary key auto_increment, 
category_name varchar(50) not null);

Create table products(
product_id int primary key auto_increment, 
product_name varchar(50) not null, 
product_value int not null, category_id int not null, 
foreign key(category_id) references categories(category_id));
