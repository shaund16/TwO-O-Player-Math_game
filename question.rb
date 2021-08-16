class Question

 def initialize
  @num1 = rand(1..20)
  @num2 = rand(1..20)
  @total = @num1 + @num2
 end 


 def show_question current_player
  puts "#{current_player.name}: What does #{@num1} plus #{@num2} equal?"
 end


 def check_answer current_player, player_guess
  unless player_guess == @total
    puts "\n"
    puts "❌❌WRONG ANSWER❌❌! Correct answer is #{@total}. \n"
    current_player.minus_score
  else 
    puts "\n"
    puts "✅✅CORRECT✅✅! You got it! \n "
  end
end
end
