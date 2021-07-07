=begin
Write your code for the 'Binary' exercise in this file. Make the tests in
`binary_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/binary` directory.
=end

module Binary
 def self.to_decimal(binary)
   total = 0
   place = 1
    binary.reverse.each_char do |digit|
     raise(ArgumentError) if digit != '0' and digit != '1'
     total += place * digit.to_i
     place *= 2
    end
   return total
 end
end
