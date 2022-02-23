####### VERSION 1 #######
# my_dice = rand(1..6)
# opponent_dice = rand(1..6)

# puts "You rolled #{my_dice}."
# puts "Your opponent rolled #{opponent_dice}."

# if my_dice > opponent_dice
#     puts "Congratulations, you win!"
# end

####### VERSION 2 #######
# my_dice = rand(1..6) + rand(1..6)
# opponent_dice = rand(1..6) + rand(1..6)

# puts "You rolled #{my_dice}."
# puts "Your opponent rolled #{opponent_dice}."

# if my_dice > opponent_dice
#     puts "Congratulations, you win!"
#     elsif my_dice == opponent_dice
#         puts "It's a draw!"
#     else
#         puts "You lose!"
# end

my_wins = 0
opponent_wins = 0

while my_wins < 2 && opponent_wins < 2 do

my_dice = rand(1..6) + rand(1..6)
opponent_dice = rand(1..6) + rand(1..6)

puts "You rolled #{my_dice}."
puts "Your opponent rolled #{opponent_dice}."

    if my_dice > opponent_dice
        puts "Congratulations, you win this round!"
        my_wins += 1
        elsif my_dice == opponent_dice
            puts "It's a draw!"
        else
            puts "You lose this round!"
            opponent_wins += 1
    end
end

if my_wins > opponent_wins
    puts "YOU ARE THE WINNER!"
else
    puts "YOU LOSE!"
end