require_relative 'black_jack'

def play_game
  while puts "Pick ask card"
  reply= gets.chomp
  if reply== "Yes" || reply== "Y"
    true
  pick_card

  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card
  end

def state_of_the_game(score, bank)
  puts "bank score: #{bank} your score: #{score}"
  # TODO: Returns custom message with player's score and bank's score
end

def asking_for_card?(score)
   if score <= 21
    return true
    play_game
   else
    build_message_for(state_of_the_game)
   end

  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice
end

def build_message_for(outcome)
  if bank <= score
    puts" you loose"
  elsif score == 21
   puts "Black Jack !"
  else puts "you loose"
  end
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)
end