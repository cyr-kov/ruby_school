arr=%w[walt hank jr jessie lidia]

while true
    y=0
    if arr.size==0
        exit
    end
    arr.each do |x| 
        y=y+1
        puts "#{y}. #{x}"
    end

    print "Who do you want to remove?"
    n=gets.to_i

    arr.delete_at n-1
end