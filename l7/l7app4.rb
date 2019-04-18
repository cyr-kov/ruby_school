print "Сколько придёт к вам гостей?:"
g=gets.to_i

if g<=-100
	"Это какая-то шутка"
	exit
end



if g<0
	puts "Ошибка"
	exit
end


if g!=0
	puts "Отлично! Кто-то будет"
end

if g==1
	puts"Придёт 1 гость"
end

if g==2
	puts "придут двое"
end

if g>=3
	puts "Будет много гостей"
end