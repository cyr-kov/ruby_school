print "Введите А: "
a=gets.to_f

print "Введите В: "
b=gets.to_f

print"Что будем делать? (+ - * /)"
opr=gets.strip

if opr=="/" && b==0
	puts "На ноль делить  нельзя!"
	exit
end

r=0

if opr=="+" 
	r=a+b
end

if opr=="-" 
	r=a-b
end
if opr=="*" 
	r=a*b
end
if opr=="/" && b!=0
	r=a/b
end



puts"Результат: #{r}"
