#encoding cp866

print "Вы довольны своей зарплатой? (Y/N) "
answer=gets.chomp.capitalize.strip
 if answer=="Y"
 	puts "Очень Хорошо"
end

if answer=="N"
	puts "очень плохо"
end

puts "Тут идут сложные вычисления"
