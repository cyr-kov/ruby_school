
arr=[]

while true
    puts "Enter array element, enter \"stop\" to stop:"
    f=gets.chomp
    if f=="stop"
       break
    end
    arr.push(f)
end    

puts arr.reverse.uniq!

