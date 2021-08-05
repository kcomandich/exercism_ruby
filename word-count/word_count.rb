class Phrase
  WORD = /\b[\w']+\b/.freeze

  def initialize(phrase)
    @words = phrase.scan(WORD).map(&:downcase)
  end

  def word_count
    Hash[@words.map{|word| [word, @words.select{|w| w == word}.count]}]
  end
end
