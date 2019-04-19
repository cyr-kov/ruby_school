print "Я загадал число. Угадай какое? (от 1 до 100)"
n=gets.to_i

x=rand(1..100)
1.times(1000) do
	if n==x 
		puts "Угадал, молодец!"
		exit
	elsif x>n
		puts "Нет, больше"
	else 
		puts "Нет, меньше"
	end
end