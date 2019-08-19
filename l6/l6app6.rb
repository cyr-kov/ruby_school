
print "how much to mend monthly: "
x=gets.to_f
print "for how many months: "
n=gets.to_i

s=0

1.upto(n) do |mm|
    s=s+x
    print "Накопления за #{mm} месяц: #{s}\n"
end
