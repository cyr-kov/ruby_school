class Book
	def initialize
		@hh ={}
	end
	def add_person opts
			puts 'Already exists!' if @hh[opts[:name]]
			@hh[opts[:name]]=opts[:age]
	end

	def show_all
		@hh.keys.each do |key|
			age=@hh[key]
			puts "Name: #{key}, age: #{age}"
		end
	end
end

b=Book.new
b.add_person :name=> 'Walt', :age=>43
b.show_all