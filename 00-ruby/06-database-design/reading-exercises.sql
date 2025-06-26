--Create a table called users with the following columns:
  --id
  --first_name
  --last_name
  --email
  --password
--Insert 3 users into the table. Here are the three users
  --| first_name | last_name | email | password | 
  --| ---------- | --------- | -------------------- | -------- | 
  --| John | Doe | johndoe@email.com | password | 
  --| Jane | Doe | janedoe@email.com | password | 
  --| Sally | Smith | sallysmith@email.com | password |

--OBJECTIVES
  --Update the email of the user with the id of 1 to updatedemail@email.com
  --Delete the user with the id of 2.
  --Print all the users in the table.

--Result should be
  --1|John|Doe|updatedemail@email.com|password
  --3|Sally|Smith|sallysmith@email.com|password

  CREATE TABLE Users(
    id int, 
    first_name varchar(255),
    last_name varchar(255), 
    email varchar(255),
    password varchar(255)
  );

  INSERT INTO Users(id, first_name, last_name, email, password)
  VALUES
  (1, 'John', 'Doe', 'johndoe@email.com', 'password' ),
  (2, 'Jane', 'Doe', 'janedoe@email.com', 'password' ),
  (3, 'Sally', 'Smith', 'sallysmith@email.com', 'password' );


  UPDATE Users
  SET email = 'updatedemail@email.com'
  WHERE id = 1;

  DELETE FROM Users 
  WHERE id = 2;

  SELECT * FROM Users

-- ouput;
  --1|John|Doe|updatedemail@email.com|password
  --3|Sally|Smith|sallysmith@email.com|password


INSERT INTO products (name, price)
VALUES 
  ('Product 1', 10.00);
  ('Product 2', 20.00);
  ('Product 3', 30.00);

INSERT INTO orders (customer_id)
VALUES 
  (1);
  (2);

INSERT INTO order_items (order_id, product_id)
VALUES 
  (1, 1);
  (1, 2);

INSERT INTO order_items (order_id, product_id)
VALUES 
  (2, 2);
  (2, 3);

SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;