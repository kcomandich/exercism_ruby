class Hamming
  def self.compute(seq1, seq2)
    raise ArgumentError.new("Sequences must be the same length") if seq1.size != seq2.size

    result = 0
    seq1.each_char.with_index {|char, i| result += char == seq2[i] ? 0 : 1 }
    result
  end
end
