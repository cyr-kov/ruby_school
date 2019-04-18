print "Сколько вам лет? "
n=gets.to_i
print "Хотите играть (Y/N)? "
ans=gets.strip.capitalize

if ans=="Y" and n>=	18
	puts "Хорошо! Поиграем!"
	money=100
	1.upto(1000) do
		puts "Ведите Enter чтобы дёрнуть ручку"
		gets
		x = rand (0..9)
		y = rand (0..9)
		z = rand (0..9)
		if x==0 && y==0 && z==0
			puts "Ваш баланс обнулён"
			exit
		end
		1.upto(9) do |nn|
			if x==nn && y==nn && z==nn
				puts "Вам зачислено #{nn*10} долларов. Ваш баланс #{money}"
			 	money=money+nn*10
			end
		end
		money=money-1
		if money<=0 
			puts "Вы проигрались!"
			exit
		end
	end
end