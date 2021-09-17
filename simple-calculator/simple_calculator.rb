class SimpleCalculator
  class Error < ::RuntimeError
  end

  class UnsupportedOperation < Error
  end

  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)

    raise ArgumentError unless first_operand.is_a?(Integer) and second_operand.is_a?(Integer)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)

    "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"

  rescue ZeroDivisionError
    "Division by zero is not allowed."
  end
end
