puts "Введите А"
a=gets.strip.to_f

puts "Введите B"
b=gets.strip.to_f

puts "Что будем делать ( + - * / )? "
op=gets.strip.match(/[\*-\+\/]/).to_s

result=0
if op=="" 
    puts "Нет операции"
    exit
end
if op == "/" && b==0
    print "На ноль делить низя"
    exit
end
result=eval((a.to_s)+" "+op+" "+(b.to_s))

print "Результат: #{result}"