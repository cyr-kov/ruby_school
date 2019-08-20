Shoes.app(title: "Игра Лила",width:765,height:700,resizable:false) do
	Shoes::show_log
    stack(width:765,height:700) do
	    background('leela_pic/Lila_map.jpg')
    	stack  :top => 200, :left => 0 do
		    #top:50
		    flow :margin => 3 do
				inscription 'FTP-server: '
				@server = edit_line :width => 200
			end

			flow :margin => 3 do
				inscription 'FTP-path: '
				@path = edit_line :width => 200
			end

			flow :margin => 3 do
				inscription 'Username: '
				@username = edit_line :width => 200, :text => 'anonymous'
			end

			flow :margin => 3 do
				inscription 'Password: '
				@password = edit_line :width => 200, :secret => true	
			end
			button "Exit!" do
	     			append { para "Well okay then."}
	     			#alert('Fuck')
	     			exit
	  		end
  		end
  		stroke white
  		fill rgb(0, 0, 0, 0)
  		@x=8
  		@y=7
  		#KEYPRESS
  		@x.downto(0) {|ix| 
  			@y.downto(0) { |iy|
  				@rect = rect(left:ix*85, top:iy*87, width:85,height:87)
  			}
  		}
	end
end