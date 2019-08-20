def get_command
    z=rand (1..4)
    if z==1
        return :left
    elsif z==2
        return :up
    elsif z==3
        return :right
    else 
        return :down
    end        
end

z="Робот едет "

a=get_command

if a==:left
    b="влево"
elsif a==:up
    b="вправо"
elsif a==:right
    b="вверх"
else 
    b="вниз"
end        

puts z+b