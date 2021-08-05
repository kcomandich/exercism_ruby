class Phrase
  WORD = /\b[\w']+\b/.freeze

  def initialize(phrase)
    @words = phrase.scan(WORD).map(&:downcase)
  end

  def word_count
    counts = {}
    @words.each{|word| counts[word] = counts[word]? counts[word] + 1 : 1 }
    counts
  end
end
