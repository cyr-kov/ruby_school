print "Я загадал число. Угадай какое? (от 1 до 100):"
answer=gets.to_i
gameWon=false
winTries=0
x=rand(1..100)
maxTries=10
maxTries.times do |count|
	if answer==x 
		puts "Угадал! Молодец!"
		winTries=count+1
		gameWon=true
		break
	elsif x>answer
		puts "Нет, больше"
	else 
		puts "Нет, меньше"
	end
	print "Попытка №#{count+1}, Осталось попыток #{maxTries-count}: "
	answer=gets.to_i
end
if gameWon
	gameMsg="Вы выиграли за #{winTries} попыток"
else
	gameMsg="Вы проиграли"
end
puts "Игра окончена! #{gameMsg}"