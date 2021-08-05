class Phrase
  WORD = /\b[\w']+\b/.freeze

  def initialize(phrase)
    @words = phrase.scan(WORD).map(&:downcase)
  end

  def word_count
    Hash[@words.map{|word| [word, @words.count(word)] }]
  end
end
