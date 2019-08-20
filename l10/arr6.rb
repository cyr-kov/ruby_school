arr=%w[Jonh Paul Jr Kate Sindy]
inp="Init"
while arr.size!=0 && inp!=""
	i=0
	arr.each do |x|
		i=i+1
		puts "#{i} #{x}"
	end
    print "БУдем добавлять(1) или удалять(0)? "
    op=gets.to_i
    if op==0
		print "Кого удалить из списка : 0 никого, Enter выход"
		inp=gets.to_i
		if inp==0 
			exit 
		end
		if inp>0 && inp<=arr.size
			arr.delete_at(inp-1)
		end
	elsif op==1
		print "Введите имя которе надо добавить в список, Enter выход"
		inp=gets.strip.capitalize
		arr << inp
	end
end