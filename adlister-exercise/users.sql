-- create the database
CREATE DATABASE car_lister;

--  Create a table for users
USE car_lister;

-- Create table for users
CREATE TABLE users (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       first_name VARCHAR(50),
                       last_name VARCHAR(50),
                       user_name VARCHAR(50),
                       password VARCHAR(50),
                       email VARCHAR(50) UNIQUE,
                       phone_number VARCHAR(50) NULL
);

-- Create table for ads
CREATE TABLE ads
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    user_id     INT          NOT NULL,
    title       VARCHAR(255) NOT NULL,
    make       VARCHAR(255) NOT NULL,
    model       VARCHAR(255) NOT NULL,
    year       VARCHAR(4) NOT NULL,
    description TEXT         NULL,
    category    VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id)
);



-- Create the "categories" table:
CREATE TABLE categories
(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    sedan VARCHAR(255),
    coupe VARCHAR(255),
    suv VARCHAR(255),
    sav VARCHAR(255),
    roadster VARCHAR(255),
    pickup VARCHAR(255),
    hatchback VARCHAR(255),
    mini_van VARCHAR(255)
);

-- Create a join table "ad_categories" to store the relationships between ads and categories:
CREATE TABLE ad_categories
(
    ad_id       INT,
    category_id INT,
    buy TEXT,
    sell TEXT,
    trade TEXT,
    PRIMARY KEY (ad_id, category_id),
    FOREIGN KEY (ad_id) REFERENCES ads (id),
    FOREIGN KEY (category_id) REFERENCES categories (id)
);

-- To retrieve all ads and their categories, you can use a join query like this:
SELECT ads.*, categories.id
FROM ads
         JOIN ad_categories ON ads.id = ad_categories.ad_id
         JOIN categories ON ad_categories.category_id = categories.id;

-- insert user example:
INSERT INTO users (name, email, password)
VALUES ('John Doe', 'johndoe@example.com', 'secretpassword');