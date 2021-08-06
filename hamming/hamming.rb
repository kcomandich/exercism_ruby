class Hamming
  def self.compute(seq1, seq2)

    raise ArgumentError.new("Sequences must be the same length") if seq1.size != seq2.size

    result = 0
    seq1.each_char.zip(seq2.each_char) {|sub_array| result += sub_array[0] == sub_array[1] ? 0 : 1 }
    result
  end
end
