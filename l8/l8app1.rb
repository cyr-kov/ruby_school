print "Введите А: "
a=gets.to_i

print "Введите В: "
b=gets.to_i

print"Что будем делать? (+ - * /)"
opr=gets.strip

if opr=="+" 
	r=a+b
end

if opr=="-" 
	r=a-b
end
if opr=="*" 
	r=a*b
end
if opr=="/" 
	r=a/b
end



puts"Результат: #{r}"
