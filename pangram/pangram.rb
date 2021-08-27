class Pangram
  ALPHABET = ('a'..'z').to_a.freeze

  def self.pangram?(sentence)
    sentence.downcase!
    ALPHABET.each.reduce {|result, c| result && sentence.include?(c) }  
  end
end
