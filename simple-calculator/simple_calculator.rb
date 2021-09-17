class SimpleCalculator
  class Error < ::RuntimeError
  end

  class UnsupportedOperation < Error
  end

  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)

    raise ArgumentError unless first_operand.is_a?(Integer)
    raise ArgumentError unless second_operand.is_a?(Integer)

    result = "#{first_operand} #{operation} #{second_operand} = "
    case operation
    when '+'
      result << "#{first_operand + second_operand}"
    when '/'
      if second_operand.zero?
        result = "Division by zero is not allowed."
      else
        result << "#{first_operand / second_operand}"
      end
    when '*'
      result << "#{first_operand * second_operand}"
    else
      raise UnsupportedOperation
    end
    return result
  end
end
