s1="-\\|/"
100000.times do |c1| 
    500.downto(1) {|c2| print "#{s1[(c1%4)]}\r"} 
end