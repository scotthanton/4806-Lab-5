require "#{Rails.root}/app/models/web_spellchecker.rb"

class DictionaryWordsController < ApplicationController
  def spellcheck
    input_word = params[:term]
    output_text = "We want to check the word "+input_word
    puts output_text
    wpc = WebSpellchecker.new
    response = wpc.correct(input_word)
    h = Hash.new(0)
    h["term"] = input_word
    if response && response == [input_word]
       h["known"] = "true"
    else
       h["known"] = "false"
       h["suggestions"] = response
    end

    render json: h
  end

end
