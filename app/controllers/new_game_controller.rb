require 'word_dictionary_api'

class NewGameController < ApplicationController

  def index
    word_dictionary = WordDictionary.new()
    selected_words = word_dictionary.new_word()
    word_array = selected_words.parsed_response.split(" ")
    challenge_word = word_array.sample
    render json: {word: challenge_word}
  end

end
