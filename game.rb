class Game
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player1 
  end

  def change_player current_player
    if current_player == @player1
      @current_player = @player2
    else 
      @current_player = @player1
    end
  end

  def continue_game 
    puts ""
    puts "#{@player1.name}: #{@player1.score}/3 vs #{@player2.name}: #{@player2.score}/3"
    puts "  "
    puts "--------------NEW TURN--------------"
    puts "   "
    change_player @current_player
    turn 
  end

def game_finished winner 
  puts "#{winner.name} wins"
  puts "-------GAME OVER -------"
end 

def turn 
  question = Question.new
  question.show_question @current_player

  player_guess = gets.chomp.to_i
  question.check_answer @current_player, player_guess


  if @current_player.game_over?
    @current_player == @player1 ? winner = @player2 : winner = !@player1
 game_finished = winner 
  else 
    continue_game
  end
end
end
