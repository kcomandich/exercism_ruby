class Acronym
  WORDS_FIRST_LETTER = /\b[a-zA-Z]/.freeze

  def self.abbreviate(phrase)
    phrase.scan(WORDS_FIRST_LETTER).join.upcase
  end
end
