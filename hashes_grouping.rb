players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]

  sorted_by_sport = {}

players.each do |player|
    if !sorted_by_sport.include?(player[:sport])
        sorted_by_sport[player[:sport]] = [player[:name]]
  else
    sorted_by_sport[player[:sport]].push(player[:name])
  end
end
puts sorted_by_sport

