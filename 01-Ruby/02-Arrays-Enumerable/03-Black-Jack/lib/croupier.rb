
require_relative 'black_jack'

def play_game
  bank= bank_score
  player_score = 0

  while asking_for_card(player_score)
     player_score += pick_card
    puts state_of_the_game(player_score,bank)

  end

  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card
end

def state_of_the_game(score, bank)
  "Your score is #{score}, bank i #{bank}"
  # TODO: Returns custom message with player's score and bank's score
end

def asking_for_card?(score)
  puts "Do you want a card"
  player_answer = gets.chomp
  player_answer == "Y" || player_answer == "yes"
end
  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice
end

def build_message_for(outcome)
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)
end
