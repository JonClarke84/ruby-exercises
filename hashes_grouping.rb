players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]

  sorted_by_sport = {}

# extract each sport and check if it exists as a key

# if it does not we add it as a key to the new hash

# value is the array of all matching names

# players.each { |player_under_consideration| player_under_consideration.each{ |key, value| (p value) } }

# sorted_by_sport = {}

players.each do |player|
    if !sorted_by_sport.include?(player[:sport])
        sorted_by_sport[player[:sport]] = [player[:name]]
  else
    sorted_by_sport[player[:sport]].push(player[:name])
  end
end
puts sorted_by_sport

