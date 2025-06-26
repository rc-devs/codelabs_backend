CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  password TEXT,
  addresses TEXT
);


CREATE TABLE phone_numbers (
  id int PRIMARY KEY,
  user_id int,
  phone_type varchar(255)
  phone_number text,
  FOREIGN KEY (user_id) REFERENCE (users.id)
);