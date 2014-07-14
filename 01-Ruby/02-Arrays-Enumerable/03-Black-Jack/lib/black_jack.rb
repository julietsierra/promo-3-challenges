
def bank_score
  rand(16..21)
end

def pick_card
  rand(1..11)
end

def game_outcome(bank, score)
  # TODO: Take the bank and the score and output an array containing the bank and then the score
   [bank, score]
end