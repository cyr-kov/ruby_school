@hh={}

def add_person opts
			puts 'Already exists!' if @hh[opts[:name]]
			@hh[opts[:name]]=opts[:age]
end

def show_hash
	@hh.keys.each do |key|
		age=@hh[key]
		puts "Name: #{key}, age: #{age}"
	end
end

def remove_hash
	@hh.clear
end

loop do
	print "Enter name: "
	name =gets.strip
	if name==''
		show_hash
		exit
	end	
	print "Enter age: "
	age =gets.to_i

	opts={:name=>name,:age=>age}
	add_person ({:name=>name,:age=>age})
	#remove_items
end