print "Enter your name: "

name = gets.chomp.downcase

name[0] == "s" ? (puts "YOUR NAME IS #{name.upcase}!") : (puts "Hi, #{name.capitalize}.")