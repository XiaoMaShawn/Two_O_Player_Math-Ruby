class Player 
  attr_accessor :name, :lives
  def initialize(name, id)
    @id = id
    @name = name,
    @lives = 3
  end
end

# player1 = Player.new("Shanw", 1)
# player2 = Player.new("Jason", 2)
