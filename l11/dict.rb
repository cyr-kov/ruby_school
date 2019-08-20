dict={"cat" => "Кошка","dog" => "Собака","girl" => "Девочка"}

loop do 
	print "Enter the word: "
	word1=gets.strip.to_s
	puts "Перевод слова : #{dict[word1]}"
end
