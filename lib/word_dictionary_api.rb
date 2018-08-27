require 'httparty'

class WordDictionary
  include HTTParty

  API_URL = 'http://app.linkedin-reach.io/words'

  def new_word(options = {})
    HTTParty.get(API_URL, options)
  end

end

word = WordDictionary.new()
# total words = 162412
puts word.new_word(query: {difficulty: 1, count: 1})
