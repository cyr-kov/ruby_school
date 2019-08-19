def show_book book
	puts "======================="
	book.keys.each do |key|
		puts "Name:#{key} , age: #{book[key]}"
	end
	puts "======================="
end

book1={'Mike'=>65,'Gus'=>50,'Lidia'=>42}
show_book book1
puts "-------------------"
book2={'Walt'=>50, 'Jessie'=>25}
show_book book2
puts "-------------------"
book=book1.merge book2
show_book book
