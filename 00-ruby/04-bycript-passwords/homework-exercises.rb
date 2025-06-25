#bycript and passwords
require "bcrypt"

my_password = BCrypt::Password.create("my password")

puts my_password

#outputs 
#$2a$12$Qyzgy3.oFhzr9P1rxWA6CeeBVblkAs/NI5dbvH3KE4CqLXcp8jjCa
#$2a$12$ - 'the salt'; makes password more secure; random every time

puts my_password == "my password" #true
puts my_password == "not my password" #false