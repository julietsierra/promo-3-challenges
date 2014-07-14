require_relative 'black_jack'

def play_game
  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for a new card

  bank = bank_score
  score = 0

  while asking_for_card?(score)
    card = pick_card
    score += card
    state_of_the_game(score, bank)
  end

  build_message_for(game_outcome(bank, score))

end

def state_of_the_game(score, bank)
  # TODO: Returns custom message with player's score and bank's score
  puts "bank score: #{bank} your score: #{score}"
end

def asking_for_card?(score)
  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice

  if score <= 21
    puts "Card ?"
    one_more_time = (gets.chomp == "Y") ? true : false
  else
    one_more_time = false
  end
  one_more_time

end

def build_message_for(outcome)
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)
  bank = outcome[0]
  me = outcome[1]

  if me > 21
    puts "you loose.."
  elsif me == 21
    puts "Black Jack!!!!!!!"
  else
    if me < bank
      puts "you loose bank beats you"
    else
      puts "you win!"
    end
  end

end





