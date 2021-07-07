=begin
Write your code for the 'Binary' exercise in this file. Make the tests in
`binary_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/binary` directory.
=end

class Binary
  def self.to_decimal(binary)
    raise ArgumentError if binary =~ /[^01]/
    result = 0
    binary.reverse.each_char.with_index {|char, index| result += char.to_i * 2**index }
    return result
  end
end
