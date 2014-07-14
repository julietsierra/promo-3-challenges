movies= ["top Gun","titanic"]
durations = [90; 180]

# Top Gun (1h30)
# Titanic (3h)

movies.map do |movie|
  movie.capitalized
end

puts '#{movies[0]} (#{durations[0]} )'