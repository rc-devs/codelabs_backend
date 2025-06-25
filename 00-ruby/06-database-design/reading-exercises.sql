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
    password varchar(255),
  )