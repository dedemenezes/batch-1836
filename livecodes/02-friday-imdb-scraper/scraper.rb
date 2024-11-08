require 'open-uri' # ruby module
require 'nokogiri' # external library

USER_AGENT = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36'
def fetch_movies_url
  movie_urls = []
  # scrape the top 5 urls from imdb page
  url = 'https://www.imdb.com/chart/top/'
  # 1. Make an HTTP request to the URL
  html_content = URI.open(url, {'User-Agent' => USER_AGENT}).read
  # 2. Parse the HTML into Ruby Objects to make it easier to work with (Nokogiri)
  html_doc = Nokogiri::HTML.parse(html_content)
  # 3. Search for the desired information - CSS SELECTORS
    # css classes -> .btn
    # css ids     -> #btn
    # css html tags -> p
  html_doc.search('.ipc-title-link-wrapper').first(5).each do |element|
    movie_url = element.attribute('href').value
    # 1. extract just the path without query string
    movie_path = movie_url.split('?').first
    movie_urls << "https://www.imdb.com#{movie_path}"
  end

  movie_urls
end

def scrape_movie(url)
  # 1. Make an HTTP request to the URL
  html_content = URI.open(url, {'User-Agent' => USER_AGENT, 'Accept-Language' => 'en-US' }).read
  # 2. Parse the HTML into Ruby Objects to make it easier to work with (Nokogiri)
  html_doc = Nokogiri::HTML.parse(html_content)
  # 3. Search for the desired information - CSS SELECTORS (director)
  director = html_doc.search('.ipc-metadata-list__item:contains("Director") a').first.text
  # .each do |element|
  #   p element.text
  # end
  # 3. Search for the desired information - CSS SELECTORS (cast)
  cast = []
  html_doc.search('.ipc-metadata-list__item:contains("Stars") div a').each do |element|
    cast << element.text
  end
  cast = cast.uniq
  # 3. Search for the desired information - CSS SELECTORS (summary)
  summary = html_doc.search('.sc-3ac15c8d-0.hRUoSB').first.text
  # 3. Search for the desired information - CSS SELECTORS (year)
  year = html_doc.search('.ipc-inline-list.ipc-inline-list--show-dividers.sc-ec65ba05-2.joVhBE.baseAlt li:first-child').first.text
  # 3. Search for the desired information - CSS SELECTORS (title)
  title = html_doc.search('h1').first.text

  # 4. return a Hash
  {
    cast: cast,
    director: director,
    summary: summary,
    year: year.to_i,
    title: title
  }
end
