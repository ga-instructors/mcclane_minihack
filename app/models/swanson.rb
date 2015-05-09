class Swanson

  BASE_URL = "http://ron-swanson-quotes.herokuapp.com/quotes"

  def self.get_ron
    url = URI.encode(BASE_URL)
    ron_quote = HTTParty.get(url)
    
    ron_quote['quote']
  end

end