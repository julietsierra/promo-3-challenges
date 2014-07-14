



clou =

until clou == 0
  puts "Player 1, tape une puissance"
  puissance_player1= gets.chomp.to_i
  if puissance_player1 == 0
   puts "joue encore"
  end
 clou = clou - puissance_player1



 puts "Player 2, tape une puissance"
 puissance_player2= gets.chomp.to_i
  if puissance_player2 == 0
    puts "joue encore"
  end

clou = clou - puissance_player2

puts "continuer?"
rejouer = gets.chomp
 break if rejouer == "non"


end





