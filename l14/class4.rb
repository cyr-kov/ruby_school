class Book
	attr_reader :last_person
	def initialize
		@hh ={}
		@last_person
	end
	def add_person opts
			puts 'Already exists!' if @hh[opts[:name]]
			@last_person={:name=>opts[:name],:age=>opts[:age]}
			@hh[opts[:name]]=opts[:age]
	end

	def show_all
		@hh.keys.each do |key|
			age=@hh[key]
			puts "Name: #{key}, age: #{age}"
		end
	end

	#def getLastPerson
	#	@last_person
	#end
end

b=Book.new
b.add_person :name=> 'Walt', :age=>43
b.add_person :name=> 'John', :age=>33
b.add_person :name=> 'Badger', :age=>42
b.add_person :name=> 'Shon', :age=>13
b.show_all
puts "====================="
puts "last person #{b.last_person[:name]}"