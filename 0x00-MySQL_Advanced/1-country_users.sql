-- create a users table in the holberton database
USE holberton;

-- create user table if not already exist
-- create the id, email, name and country column
CREATE TABLE IF NOT EXISTS users (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255),
	country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);
