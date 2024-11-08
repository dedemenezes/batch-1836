require_relative '../scraper'

RSpec.describe '#fetch_movies_url' do
  it 'returns an array with the top 5 urls' do
    expected = [
      "https://www.imdb.com/title/tt0111161/",
      "https://www.imdb.com/title/tt0068646/",
      "https://www.imdb.com/title/tt0468569/",
      "https://www.imdb.com/title/tt0071562/",
      "https://www.imdb.com/title/tt0050083/"
    ]
    expect(fetch_movies_url).to eq(expected)
  end
end


RSpec.describe '#scrape_movie' do
  it 'returns a Hash describing a movie' do
    expected = {
      cast: [ "Christian Bale", "Heath Ledger", "Aaron Eckhart" ],
      director: "Christopher Nolan",
      summary: "When a menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman, James Gordon and Harvey Dent must work together to put an end to the madness.",
      title: "The Dark Knight",
      year: 2008
    }
    expect(scrape_movie('https://www.imdb.com/title/tt0468569/')).to eq(expected)
  end
end
