#require 'pry-byebug'

class Luhn
  def self.valid?(input)
    input.gsub!(/\s/, '')
    return false if invalid_input?(input)

    numbers = input.reverse.split('').map(&:to_i)

    result = luhn_calculation(numbers)
    return divisible_by_10?(result)
  end

  def self.invalid_input?(input)
    input.size <= 1 or input.match(/\D/)
  end

  def self.double_a_digit(digit)
    digit *= 2
    digit -= 9 if digit > 9
    return digit
  end

  def self.divisible_by_10?(num)
    num % 10 == 0
  end

  def self.luhn_calculation(numbers)
    (odds, evens) = numbers.partition.with_index{|_,i| i.odd?}
    evens.sum + odds.sum{ |n| double_a_digit(n) }
  end
end
