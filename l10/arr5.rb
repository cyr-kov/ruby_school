arr=%w[john hank jr mary jane]
1.upto(3) do |x| 
	if x==2 
		puts arr[x].capitalize
	else
		puts arr[x]
	end
end