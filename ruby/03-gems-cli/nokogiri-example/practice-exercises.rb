require "nokogiri"

index_doc = Nokogiri::HTML(File.open("index.html"))

index_doc.css("li").each {|li| puts li.text}