class Phrase
  WORD = /\b[\w']+\b/.freeze
  attr_reader :words

  def initialize(phrase)
    @words = phrase.downcase.scan(WORD)
  end

  def word_count
#    words.tally # available in Ruby 2.7+
    words.to_h{|word| [word, words.count(word)] }
  end
end
