class Luhn

  def self.valid?(number)
    number.gsub!(/\s/, '')
    return false if invalid_input?(number)

    result = number.reverse.each_char.with_index.map{ |n, i| i.odd? ? double_a_digit(n.to_i) : n }
    result = result.reduce(0) {|sum, n| sum + n.to_i}

    return true if result % 10 == 0
    return false 
  end

  private

  def self.invalid_input?(number)
    number.size <= 1 or number.match(/\D/)
  end

  def self.double_a_digit(digit)
    digit = digit * 2
    if digit > 9
      digit = digit - 9
    end

    return digit
  end
end
