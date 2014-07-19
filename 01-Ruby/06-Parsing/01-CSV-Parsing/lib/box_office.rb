#Encoding: utf-8
require 'csv'

def most_successfull(number, max_year, file_name)
  movie =[]
  movies = {}
  csv_options = {col_sep: ',', encoding: "ISO-8859-1:UTF-8"}

  CSV.foreach(file_name, csv_options) do |row|
  movies = {name: row[0], year: row[1].to_i, earnings: row[2].to_i}
  if year:.first < max_year
  movie << movies
    end

  movie
end




