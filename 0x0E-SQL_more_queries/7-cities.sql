-- Creates a database 'hbtn_0d_usa'
-- Creates a table 'cities' inside 'hbtn_0d_usa' with the following properties:
-- id, INT, auto generated, not null, primary key
-- state_id, INT, foreign key that references 'id' from the 'states' table
-- name, VARCHAR(256) not null
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;
USE hbtn_0d_usa;
CREATE TABLE IF NOT EXISTS hbtn_0d_usa.cities (
	id INT AUTO_INCREMENT PRIMARY KEY,
	state_id INT NOT NULL,
	name VARCHAR(256) NOT NULL,
	FOREIGN KEY (`state_id`) REFERENCES `states`(`id`)
);