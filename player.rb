class Player 
  attr_reader :name, :score 

  def initialize name
    @name = name
    @score = 3
  end

  def game_over?
    @score === 0
  end

  def minus_score 
    @score -= 1
  end
end