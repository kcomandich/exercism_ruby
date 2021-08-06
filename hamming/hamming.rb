class Hamming
  def self.compute(seq1, seq2)
    raise ArgumentError.new("Sequences must be the same length") if seq1.size != seq2.size

    seq1.each_char.with_index.count {|char, i| char != seq2[i] }
  end
end
