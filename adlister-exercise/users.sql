-- create the database
CREATE DATABASE car_lister;

--  Use the database
USE car_lister;

-- Create table for users
CREATE TABLE users
(
    id           INT AUTO_INCREMENT PRIMARY KEY,
    first_name   VARCHAR(50)         NOT NULL,
    last_name    VARCHAR(50)         NOT NULL,
    username     VARCHAR(50) UNIQUE  NOT NULL,
    password     VARCHAR(255)        NOT NULL,
    email        VARCHAR(255) UNIQUE NOT NULL,
    phone_number VARCHAR(50)
);

-- Create table for ads
CREATE TABLE ads
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    user_id     INT          NOT NULL,
    title       VARCHAR(255) NOT NULL,
    make        VARCHAR(255) NOT NULL,
    model       VARCHAR(255) NOT NULL,
    year        INT          NOT NULL CHECK (year >= 1900 AND year <= 2100),
    description TEXT,
    category    VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

-- Create the "categories" table:
CREATE TABLE categories
(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL
);

-- Create a join table "ad_categories" to store the relationships between ads and categories:
CREATE TABLE ad_categories
(
    ad_id       INT                NOT NULL,
    category_id INT                NOT NULL,
    buy         ENUM ('yes', 'no') NOT NULL DEFAULT 'no',
    sell        ENUM ('yes', 'no') NOT NULL DEFAULT 'no',
    trade       ENUM ('yes', 'no') NOT NULL DEFAULT 'no',
    PRIMARY KEY (ad_id, category_id),
    FOREIGN KEY (ad_id) REFERENCES ads (id),
    FOREIGN KEY (category_id) REFERENCES categories (id)
);

-- To retrieve all ads and their categories, you can use a join query like this:
SELECT ads.*, categories.name
FROM ads
         JOIN ad_categories ON ads.id = ad_categories.ad_id
         JOIN categories ON ad_categories.category_id = categories.id;

-- insert user example:
INSERT INTO users (first_name, last_name, username, email, password, phone_number)
VALUES ('John', 'Doe', 'johndoe', 'johndoe@example.com', 'secretpassword', '(123) 456-7890');
