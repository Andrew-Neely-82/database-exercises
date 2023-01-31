USE adlister_db;

-- create the database
CREATE DATABASE ad_lister;

--  Create a table for users
USE adlister_db;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL);

CREATE TABLE ads (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  title VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  category VARCHAR(255) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

-- An ad can be in one or more categories (for example, buy a car, sell a car, browse for cars...) how do i do this?

USE ad_lister;

