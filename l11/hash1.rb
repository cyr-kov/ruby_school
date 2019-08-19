@hsh={}

def add_hashes
	loop do
			print "Enter name (Enter to stop) "
			name=gets.strip.capitalize
			if name==""
				break
			end
			print "Enter phone number "
			age=gets.to_i
			@hsh[name]=age
	end
end

def display_hashes
	x=0
	@hsh.each do |k,v|
		puts "Name: #{k}, Phone: #{v}"
	end
end

def remove_hashes
	while @hsh.size>0 
		print "Кого удалить из списка : 0 никого, Enter выход"
		inp=gets.to_i
		if inp==0 
			break
		end
		if inp>0 && inp<=@hsh.size
			@hsh.delete_at(inp-1)
		end
		display_hashes
	end
end

add_hashes
#puts @hsh
display_hashes
#remove_items
