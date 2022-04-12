-- DROP DATABASE LGSMS;

-- SET sql_mode='ANSI_QUOTES';

-- CREATE DATABASE LGSMS;

USE LGSMS;

CREATE TABLE Image (
image_id int NOT NULL IDENTITY(1,1),
image_path varchar(500), 
image_name varchar(255),
PRIMARY KEY (image_id)
);

CREATE TABLE Profile(
profile_id int NOT NULL IDENTITY(1,1),
image_id int,
full_name nvarchar(100) NOT NULL,
phone varchar(15) NOT NULL,
dob date,
gender bit,
address nvarchar(500) NOT NULL,
email varchar(100) NOT NULL,
created_at datetime,
updated_at datetime,
PRIMARY KEY(profile_id),
FOREIGN KEY (image_id) REFERENCES Image(image_id)
);

CREATE TABLE Role(
role_id int NOT NULL IDENTITY(1,1),
role_name varchar(20) NOT NULL,
PRIMARY KEY(role_id)
);

CREATE TABLE Account(
account_id int NOT NULL IDENTITY(1,1),
username varchar(50) NOT NULL,
password varchar(500) NOT NULL,
role_id int NOT NULL,
profile_id int NOT NULL,
is_active bit NOT NULL,
PRIMARY KEY (account_id),
FOREIGN KEY (role_id) REFERENCES Role(role_id),
FOREIGN KEY (profile_id) REFERENCES Profile(profile_id)
);

CREATE TABLE Provider(
provider_id int NOT NULL IDENTITY(1,1),
provider_name nvarchar(50) NOT NULL,
provider_phone varchar(15) NOT NULL,
provider_address nvarchar(500) NOT NULL,
provider_email varchar(100) NOT NULL,
is_active bit NOT NULL,
provider_created_at datetime,
provider_updated_at datetime,
PRIMARY KEY(provider_id)
);


CREATE TABLE Product(
product_id int NOT NULL IDENTITY(1,1),
image_id int NOT NULL,
product_name nvarchar(150) NOT NULL,
product_price float(15),
product_import_price float(15),
product_instock int,
product_empty int,
product_description ntext,   
product_created_at datetime,
product_updated_at datetime,
is_active bit,
provider_id int,
PRIMARY KEY(product_id),
FOREIGN KEY(provider_id) REFERENCES Provider(provider_id),
FOREIGN KEY(image_id) REFERENCES Image(image_id)
);


CREATE TABLE Importation(
import_id int NOT NULL IDENTITY(1,1),
product_id int NOT NULL,
product_import_quantity int NOT NULL,
import_date datetime,
account_id int NOT NULL,
provider_id int NOT NULL,
note nvarchar(500),
import_amount float(15),
PRIMARY KEY (import_id),
FOREIGN KEY (product_id) REFERENCES Product(product_id),
FOREIGN KEY (account_id) REFERENCES Account(account_id),
FOREIGN KEY (provider_id) REFERENCES Provider(provider_id)
);

CREATE TABLE Shopping_Cart(
cart_id int NOT NULL IDENTITY(1,1),
product_id int NOT NULL,
product_quantity int NOT NULL,
customer_id int NOT NULL,
PRIMARY KEY (cart_id),
FOREIGN KEY (product_id) REFERENCES Product(product_id),
FOREIGN KEY (customer_id) REFERENCES Account(account_id)
);

CREATE TABLE Orders(
order_id int NOT NULL IDENTITY(1,1),
order_code varchar(15) NOT NULL,
customer_id int,
order_status int NOT NULL
CHECK (order_status in (0,1,2,3,4)),
created_at datetime,
customer_name nvarchar(100),
order_note_1 nvarchar(500),
order_note_2 nvarchar(500),
business_staff_id int,
updated_at datetime,
phone varchar(15) NOT NULL,
address nvarchar(500) NOT NULL,
PRIMARY KEY(order_id),
FOREIGN KEY (customer_id) REFERENCES Account(account_id),
FOREIGN KEY (business_staff_id) REFERENCES Account(account_id)
);

CREATE TABLE Order_Detail(
order_detail_id int NOT NULL IDENTITY(1,1),
order_id int NOT NULL,
product_id int NOT NULL,
product_quantity int NOT NULL,
price float(15),
PRIMARY KEY(order_detail_id),
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE Receipt_Voucher(
receipt_id int NOT NULL IDENTITY(1,1),
order_id int NOT NULL,
create_at datetime NOT NULL,
business_staff_id int NOT NULL,
total_money FLOAT(15) NOT NULL,
deposit FLOAT(15) ,
note nvarchar(500),
voucher_status int,
PRIMARY KEY (receipt_id),
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (business_staff_id) REFERENCES Account(account_id)
);




