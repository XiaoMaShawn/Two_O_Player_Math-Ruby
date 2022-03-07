require ('./player')
require ('./question')
require ('./game')


print ("Please enter name for Player 1: ")
name1 = $stdin.gets.chomp
print ("Please enter name for player 2: ")
name2 = $stdin.gets.chomp

@player_1 = Player.new(name1, 1)
@player_2 = Player.new(name2, 2)
@game1 = Game.new

# @current_player = rand(2) + 1


puts("player #{@current_player} goes first!")



def start
  puts (" this is the start current player #{@game1.current_player}")
  puts("PLayer 1's lives: #{@player_1.lives}")
  puts("PLayer 2's lives: #{@player_2.lives}")
  question1 = Question.new
  question1.generate_question

  input = $stdin.gets.chomp
  if question1.check_answer(input) 
    puts (" this is the current player #{@game1.current_player}")
    @game1.change_current_player()
    puts ("this is the current player #{@game1.current_player}")
    start
  else 
    @game1.lose_life(@player_1, @player_2)
    @game1.check_gameOver(@player_1, @player_2)
    puts (" this is the current player #{@game1.current_player}")
    @game1.change_current_player()
    puts (" this is the current player #{@game1.current_player}")
    start
  end
end 

start




