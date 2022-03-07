class Game
    attr_accessor :current_player
    def initialize
        @current_player = 1
    end
    
    def change_current_player 
        if @current_player == 1
            @current_player = 2
        else 
            @current_player = 1
        end
    end

    def lose_life(player1,player2)
        if @current_player == 1
            player1.lives = player1.lives - 1
        else 
            player2.lives = player2.lives - 1
        end
    end
        

    def check_gameOver(player_1, player_2)
      if @current_player == 1
        if player_1.lives == 0 
            abort("Player 2 wins!")
        end
      else
        if player_2.lives == 0
            abort("Player 1 wins!")
        end
      end
    end
  end