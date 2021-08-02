class Acronym
  def self.abbreviate(phrase)
    phrase.scan(/([a-zA-Z])\w*\W?/).join.upcase
  end
end
