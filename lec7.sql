CREATE DATABASE CompanyDB;

USE CompanyDB;

select * from college_admission;

CREATE TABLE restaurant_sales (
    order_id INT,
    time VARCHAR(50),
    date VARCHAR(50),
    customer VARCHAR(50),
    region VARCHAR(50),
    category VARCHAR(50),
    menu_item VARCHAR(100),
    quantity INT,
    price INT,
    sales INT,
    month VARCHAR(20),
    day_name VARCHAR(20),
    hour INT
);

SHOW VARIABLES LIKE 'secure_file_priv';

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/CSV_restaurant_sales_1200 (1).csv'
INTO TABLE restaurant_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT * FROM restaurant_sales;






