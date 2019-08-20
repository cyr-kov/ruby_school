arr=[:rock,:scissors,:paper]

puts "Сыграем в камни-ножница-бумагу!"

loop do
	print "Какой ваш выбор: камни 1, ножницы 2, бумага 3, 0- выход "
	choice=gets.to_i
	if choice<=0 && choice >3
		exit
	end
	comp=rand(1..3)
	if comp==choice
		puts "Ничья!"
	elsif choice==comp+1 || (comp==3 && choice==1)
		puts "Я победил!"
	else
		puts "Ты победил!"
	end
	puts "Ты выбрал #{arr[choice-1]}"
	puts "Я выбрал #{arr[comp-1]} "
	puts "Сыграем ещё? "
end


