@arr=[]

def add_items
	loop do
			print "Введите имя которе надо добавить в список "
			name=gets.strip.capitalize
			if name==""
				break
			end
			print "Введите возраст:"
			age=gets.to_i
			@arr << [name,age]
	end
end

def display_items
	x=0
	@arr.each do |item|
		x=x+1
		puts "#{x}. #{item[0]}, #{item[1]}"
	end
end

def remove_items
	while @arr.size>0 do
		print "Кого удалить из списка : 0 никого, Enter выход"
		inp=gets.to_i
		if inp==0 
			break
		end
		if inp>0 && inp<=@arr.size
			@arr.delete_at(inp-1)
		end
		display_items
	end
end

add_items
display_items
remove_items
