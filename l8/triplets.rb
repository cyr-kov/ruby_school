#require 'json'
#require 'stringio'

# Complete the compareTriplets function below.
def compareTriplets(a, b)
    aliceScore=0
    bobScore=0
    0.upto(2) {|i|
        if a[i]>b[i] 
            aliceScore+=1
        elsif a[i]<b[i]
            bobScore+=1
        end
    }
    [aliceScore,bobScore]
end

#fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a = [23,15,4]

b = [2,22,1]

result = compareTriplets a, b
puts result.join " "
#fptr.write result.join " "
#fptr.write "\n"

#fptr.close(