class Affine
  ALPHABET = [*('a'..'z')].freeze

  attr_reader :a, :b

  def initialize(a, b)
    raise ArgumentError if a.gcd(ALPHABET.size) > 1
    @a = a
    @b = b
  end

  def encode(plaintext)
    result = plaintext.downcase.each_char.map do |c| 
      if c.match(/[0-9]/)
        c 
      elsif ! ALPHABET.index(c)
        next
      else
        ALPHABET[((@a * ALPHABET.index(c) + @b) % ALPHABET.size)] 
      end
    end
    result.compact!
    result.each_with_index.map {|c, i| ((i+1) % 5).zero? && i+1 != result.size ? c + ' ' : c }.join
  end

  def decode(ciphertext)
#    (a * n)  % ALPHABET.size = 1
    n = 1
    while true
      break if (@a * n) % ALPHABET.size == 1
      n += 1
    end
    result = ciphertext.each_char.map do |c|
      if c.match(/[0-9]/)
        c
      elsif ! ALPHABET.index(c)
        next
      else
        ALPHABET[(n * (ALPHABET.index(c) - @b)) % ALPHABET.size]
      end
    end
    result.compact.join
  end
end
