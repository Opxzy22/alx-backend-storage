-- create users table in the database holberton 
-- Check if the table already exists, and create it if it doesn't
CREATE TABLE IF NOT EXISTS users (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255) 
);
