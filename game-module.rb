require "./players"

module MathGame

    class NewGame
        attr_accessor :player1, :player2 
        
        def initialize
            @player1 = MathGame::Players.new("Player 1")
            @player2 = MathGame::Players.new("Player 2")
        end
        
        def round_run(current_player)

            num1 = rand(1..20)
            num2 = rand(1..20)

            puts "#{current_player.name}: What does #{num1} plus #{num2} equal?"
            print "> "
            answer = $stdin.gets.chomp.to_i
            if answer == num1 + num2
                puts "#{current_player.name}: YES! You are correct!!"
            else
                puts "#{current_player.name}: Seriously? No!"
                    
                current_player.lives -= 1
            end

            puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"

            if current_player.lives < 1
                return puts "-------- Game Over -------- \n Good bye!"
                
            end
        end
    end
end

firstGame = MathGame::NewGame.new
# firstGame.round_run()