print "Сколько вам лет? "
n=gets.to_i
print "Хотите играть (Y/N)? "
ans=gets.strip.capitalize


if ans=="Y" and n>=	18
	puts "Хорошо! Поиграем!"
	print "Ведите ставку за игру(выигрыш умножится на ставку):"
	s=gets.to_i
	if s<=0 || s>=100
		s=1
	end
	money=100
	1.upto(1000) do
		puts "Ведите Enter чтобы дёрнуть ручку"
		gets
		x = rand (0..9)
		y = rand (0..9)
		z = rand (0..9)
		puts "Выпало #{x} #{y} #{z}"
		if x==0 && y==0 && z==0
			puts "Ваш баланс обнулён"
			exit
		end
		#1.upto(9) do |nn|
			if x==y && y==z && x!=6
				puts "Вам зачислено #{x*10*s} долларов."
			 	money+=x*10*s
			end
		#end
		if x==y && y==z && x==6
			money/=2
			puts "Уполовинивание депозита"
		end
		if  x==1 && y==2 && z==3
			puts "!!!!!!!!!MEGA BONUS
			".concat(3,3,3,3,3)
			money+=123*s
		end
		money-=s
		puts "Ваш баланс #{money}"
		if money<s 
			puts "Вы проигрались!"
			exit
		end
	end
end