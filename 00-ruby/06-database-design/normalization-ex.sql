CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  password TEXT,
);

CREATE TABLE addresses(
  id int PRIMARY KEY,
  user_id int, 
  street text,
  city text, 
  state text,
  zip_code text,
  FOREIGN KEY (user_id) REFERENCES (users.id)
)


CREATE TABLE phone_numbers (
  id int PRIMARY KEY,
  user_id int,
  phone_type varchar(255)
  phone_number text,
  FOREIGN KEY (user_id) REFERENCES (users.id)
);