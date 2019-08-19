
print "how much to mend monthly: "
x=gets.to_f
print "Сколько лет будем копить: "
n=gets.to_i

s=0

1.upto(n) do |dd|
    1.upto(12) do |mm|
	s=s+x
	print "Год #{dd} месяц #{mm}, отложено: #{s}\n"
    end
end
