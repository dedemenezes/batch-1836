require 'yaml'
require_relative 'scraper'
# Grab all the movies
# Scrape each movie
# dump into YML file

puts 'Scraping top 5 movies url\'s'

urls = fetch_movies_url


# Which othe iterator could we use instead of
# creating an empty array + each + <<
puts "Scraping #{url.size} movies"

movies = []
urls.each do |movie_url|
  puts "scraping #{movie_url}"
  movies << scrape_movie(movie_url)
  puts "Done with #{movie_url}!"
end

puts 'Dumping into yaml...'

File.open('movies.yml', 'wb') do |file|
  file.write(movies.to_yaml)
end

puts 'Done zo/'
