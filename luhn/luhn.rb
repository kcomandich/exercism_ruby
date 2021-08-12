class Luhn

  def self.valid?(num)
    num.gsub!(/\s/, '')
    return false if invalid_input?(num)

    result = num.reverse.each_char.with_index.map{ |n, i| i.odd? ? double_a_digit(n.to_i) : n }
    result = result.reduce(0) {|sum, n| sum + n.to_i}

    return divisible_by_10?(result)
  end

  private

  def self.invalid_input?(num)
    num.size <= 1 or num.match(/\D/)
  end

  def self.double_a_digit(digit)
    digit = digit * 2
    if digit > 9
      digit = digit - 9
    end

    return digit
  end

  def self.divisible_by_10?(num)
    num % 10 == 0
  end

end
