require './game-module'
require './players'

class GameLoop
    
    def initialize
      
    end
    
    def start
      firstGame = MathGame::NewGame.new
      cur_player = firstGame.player1
      loop do

        firstGame.round_run(cur_player)

        if cur_player == firstGame.player1
          cur_player = firstGame.player2
        elsif cur_player == firstGame.player2
          cur_player = firstGame.player1
        end

        if firstGame.player1.lives == 0 || firstGame.player2.lives == 0
       break
       
        end
    end
end
    
end

