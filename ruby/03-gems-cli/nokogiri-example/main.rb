require "nokogiri" #require to use provided objects

#Nokogiri::HTML used to parse html doc at file string
#File.open opens specified file
doc = Nokogiri::HTML(File.open("index.html")) #creates a nokogiri instance

puts doc.css("h1").text #get css and text content of the h1 element 