require './players'
require './question'

andy = Player.new("Andrey")
gary = Player.new("Gary")
a = Question.new
counter = 0

while (andy.number_of_lives != 0 && gary.number_of_lives != 0)  

  if (counter%2 == 0)
    player = andy
  else
    player = gary
  end

  puts "Andy has #{andy.number_of_lives} left and Gary has #{gary.number_of_lives} left"
  puts "A question for #{player.name}"

  answer = a.ask_question  
  counter += 1
  player_answer = gets.chomp.to_i

  if (answer == player_answer)
    puts "Bingo!"
  else
    player.decrease
    puts "Seriously? No! You lost 1 life"
  end

end

if (andy.number_of_lives == 0)
  puts 'Gary wins!'  
end

if (gary.number_of_lives == 0)
  puts 'Andy wins!'
  end

  

# main_instance = Main.new
# puts "Please enter the 1"
# val1 = gets.chomp