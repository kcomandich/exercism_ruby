class Isogram
  REPEATING_LETTER = /(\w).*\1/.freeze

  def self.isogram?(phrase)
    return ! phrase.downcase.match(REPEATING_LETTER)
  end
end
