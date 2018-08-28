require 'httparty'

class WordDictionary
include HTTParty
  BASE_URL = 'http://app.linkedin-reach.io/words'

  def new_word(options = {})
  # example of including an option when calling new_word:
  # word.new_word(query: { maxLength: 3 })
    HTTParty.get(BASE_URL, options)
  end

end
