
require_relative 'black_jack'

def play_game
  bank= bank_score
  player_score = 0

    while asking_for_card?(player_score)
     player_score += pick_card
     puts state_of_the_game(player_score,bank)
end

puts outcome = game_outcome(player_score,bank)
puts build_message_for(outcome)
end

def state_of_the_game(score, bank)
  "Your score is #{player_score}, bank i #{bank}"
  end

 def asking_for_card?(answer)
  puts "Do you want a card"
  player_answer = gets.chomp
  player_answer == "Y" || player_answer == "yes"
  return true
else return false



end

  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card
end



# TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice


def build_message_for(outcome)
  if outcome[1] > 21
    puts "you loose"
  elsif outcome[1] == 21
    puts "Black Jack !"
  elsif outcome[0] < outcome[1]
    puts "you win"
  else
    puts "you're over you loose "
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)
end
