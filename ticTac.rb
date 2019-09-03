@filler='.' #9109.chr(Encoding::UTF_8)
@TicTac=[[@filler, @filler , @filler],
		[@filler, @filler , @filler],
		[@filler, @filler , @filler]
	]


def checkGameOver options
	win=[options[:turn],options[:turn],options[:turn]]
	0.upto(2) do |i|
		if @TicTac[i]==win || [@TicTac[0][i],@TicTac[1][i],@TicTac[2][i]] == win
			puts "#{options[:turn]} winner!! Game Over!"
			return true
		end
	end
	diag1=[@TicTac[0][0],@TicTac[1][1],@TicTac[2][2]]
	diag2=[@TicTac[0][2],@TicTac[1][1],@TicTac[2][0]]
	#puts "#{diag1} / #{diag2} = #{win}"
	if diag1==win || diag2==win
		puts "#{options[:turn]} winner! Game Over!"
		return true
	end
	z=false
	0.upto(2) do |i|
		z=z||@TicTac[i].include?(@filler)
	end
	if !z
			puts "Draw! Game Over!"
			return true
	end
	#puts "#{options[:turn]} is not winner"
	return false

end

def printBoard
	puts "   1    2    3"
	0.upto(2) do |i|
		puts "#{i}  #{@TicTac[i][0]}    #{@TicTac[i][1]}    #{@TicTac[i][2]}"
	end
end

def checkCellEmpty options
	@TicTac[options[:x]][options[:y]]==@filler
end

def player1Ready options
	if options[:comp]
		makeRandomTurn({:totem=>'X'})
	end
	if checkGameOver({:turn=>'X'})
		printBoard
		exit
	end
	player2Ready({:comp=>true})
end

def makeRandomTurn options
	loop do
		x=rand(0..2)
		y=rand(0..2)
		if checkCellEmpty({:x=>x,:y=>y})
			@TicTac[x][y]=options[:totem]
			break
		end	
	end
end

def player2Ready options
	if options[:comp]
		makeRandomTurn(:totem=>'O')
	end
	if checkGameOver ({:turn=>'O'})
		printBoard
		exit
	end
	player1Ready({:comp=>true})
end



printBoard
player1Ready({:comp=>true})
#otpions={:turn=>'X'}
#checkGameOver otpions