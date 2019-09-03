@actions=[:влево,:вверх, :вправо, :вниз]

def get_command
    z=rand (1..4)
    @actions[z-1].to_s   
end

z="Робот едет "

a=get_command  

puts z+a