CREATE DATABASE myfirstsql;
USE myfirstsql;
CREATE TABLE users(
	id INT auto_increment PRIMARY KEY,
	name varchar(100) not null,
	email varchar(100) not null,
    gender enum("Male", "Female", "Others"),
    date_of_birth date,
    created_at timestamp default current_timestamp

);
select * from users;