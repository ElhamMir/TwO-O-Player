p1 = 3
p2 = 3
counter = 1
while p1>0 && p2>0
  i = Random.rand(1...20) 
  j = Random.rand(1...20) 
  z = i + j
  
 
  if counter.even?
    puts "Player 2: What does #{i} plus #{j} equal?"
  else
    puts "Player 1: What does #{i} plus #{j} equal?"
  end
  
  a = gets.chomp
  if a.to_i == z
    puts "YES! You are correct."
  else
    puts "Seriously? No!"
    if counter.even?
      p2 -= 1
    else
      p1 -= 1
    end
    puts "P1: #{p1}/3 vs P2: #{p2}/3"
    puts "----- NEW TURN -----"
    counter += 1
  end
  
end
if p1 == 0 
  puts "player 2 wins with a score of #{p2}/3"
else 
  puts "player 1 wins with a score of #{p1}/3"
end
puts "----- GAME OVER -----"
puts "Good bye!"
