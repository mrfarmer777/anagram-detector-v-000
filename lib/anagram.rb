# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word=word
  end

  def match(anarray)
    anarray.select {|pot_ana| self.is_anagram?(word,pot_ana)}
  end

  def is_anagram?(word,pot_ana) #seems like this should be a 'private' method, but maybe not.
    word_array=word.split(//).sort
    ana_array=pot_ana.split(//).sort
    word_array==ana_array
  end

end
