steps = 0
death = false
play_again_prompt = ""

def play_again(death)
  if death == true
    print "Play again? (y/n)"
    play_again_prompt = gets.chomp.downcase
    if play_again_prompt.chr == "y"
      steps = 0
      death = false
    elsif play_again_prompt.chr == "n"
      puts "Thank you for playing."
      death = false
      steps = 0
      exit
    else
      puts "Error. Please reload."
    end
  end
end

puts "Welcome to the dungeon! Make your choice, forward, left or right!"

while steps < 3 do

if steps == 2
  puts "You have survived the dungeon and escaped to freedom, congratulations!"
  death = true
  steps = 0
  play_again(death)
end

death = false

print "Enter your direction: "
direction = gets.chomp.downcase

if direction.chr == "l"
  puts "You have been eaten by a werewolf. Hard luck!"
  steps = 0
  death = true
elsif
  direction.chr == "r"
  puts "You have been stabbed by a goblin, you are now dead."
  steps = 0
  death = true
elsif direction.chr == "f"
steps += 1
  if steps < 2
    puts "You survive. Make your next choice."
  end
else
  puts "Error, please enter forward, left or right."
end
play_again(death)
end