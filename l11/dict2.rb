dict={"cat" => ["Кот","Кошка"],"dog" => ["Собака","Пёс"],"girl" => ["Девочка","девушка"],"no"=>["Нет"]}

loop do 
	print "Enter the word: "
	word1=gets.strip.to_s
	puts "Найдено #{dict[word1].size} переводов"
	#puts dict[word1]
	dict[word1].each_with_index { |i,z| puts "Перевод слова № #{z+1}:  #{i}"}
	x=0
	dict.each_value do |value|
		x+=value.size
	end
	puts "Переводов #{x}"
end
