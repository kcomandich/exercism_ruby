class Phrase
  WORD = /\b[\w']+\b/.freeze
  attr_reader :words

  def initialize(phrase)
    @words = phrase.scan(WORD).map(&:downcase)
  end

  def word_count
    words.to_h{|word| [word, words.count(word)] }
  end
end
