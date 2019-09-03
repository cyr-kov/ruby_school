arr=[]

while true do
    print "Enter the name to add:"
    name=gets.strip

    if name ==""
        break
    end
    arr << name 
end

puts arr