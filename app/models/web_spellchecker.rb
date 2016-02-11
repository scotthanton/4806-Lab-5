class WebSpellchecker < Spellchecker
   def initialize 
      puts "initialized"
   end

  def known(words)
    result = []
    result = DictionaryWord.where(word: words) rescue nil
    result = result.map{|x| x[:word]}
    return result
  end

end
