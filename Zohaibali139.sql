create database Ecommerce_Platform;
use Ecommerce_Platform;


-- Users Table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255),
    address VARCHAR(255),
    phone_number VARCHAR(20)
);

-- Products Table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    description TEXT,
    price INT,
    stock_quantity INT
);

-- Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    total_amount INT
);

-- Orders_History Table
CREATE TABLE Orders_History (
    history_id INT PRIMARY KEY,
    order_id INT,
    total_amount INT,
    status_date DATE
);


-- Payments Table
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    payment_method VARCHAR(50),
    amount_paid INT
);

-- Reviews Table
CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    product_id INT,
    user_id INT,
    review_text TEXT,
    rating INT,
    review_date DATE
);


-- Shipping Table
CREATE TABLE Shipping (
    shipping_id INT PRIMARY KEY,
    order_id INT,
    shipping_date DATE,
    shipping_address VARCHAR(255),
    shipping_status VARCHAR(50)
);

-- Promotions Table
CREATE TABLE Promotions (
    promotion_id INT PRIMARY KEY,
    promotion_name VARCHAR(255),
    start_date DATE,
    end_date DATE,
    discount_percentage VARCHAR(20)
);

-- Coupons Table
CREATE TABLE Coupons (
    coupon_id INT PRIMARY KEY,
    coupon_code VARCHAR(50),
    discount_amount INT,
    expiration_date DATE
);

CREATE TABLE MonthlyExpenses (
    ID INT PRIMARY KEY,
    product_name VARCHAR(255),
    quantity INT,
    description TEXT,
    amount INT
);


