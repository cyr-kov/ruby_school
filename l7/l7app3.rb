print "Введите Enter чтобы сыграть"
n=gets
print "Cколько раз будем играть:"
n=gets.to_i

1.upto(n) do |m|
	puts "Играем #{m} раз "
	x=rand (1..50)
	if x==11
		puts "Вы выиграли!!!!"
	end
end