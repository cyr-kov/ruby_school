class Animal
	def run
			@name='Dog'

		puts "#{@name} is running"
	end

	def stop
				puts "#{@name} is stoped"

	end
end

a=Animal.new
a.run
a.stop

