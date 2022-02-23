one_string = String.new("1")
two_string = String.new("2")

puts one_string + two_string #This just concatenates two strings together to make "12". It's not reading the characters as integers.

puts 1 + one_string #Returns an error "String can't be coerced into Integer (TypeError)". This is because the program is attempting to mix different types of object