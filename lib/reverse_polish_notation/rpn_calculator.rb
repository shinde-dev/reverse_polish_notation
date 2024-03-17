module ReversePolishNotation
  class RPNCalculator

    attr_reader :stack
    OPERATORS = %w(+ - * /)

    def initialize
      @stack = []
    end

    def calculate(inputs)
      inputs.each do |input|

        add_to_stack(Float(input)) and next unless OPERATORS.include?(input)
          
        raise InvalidInput, "Input is not valid" if stack.length < 2

        operand_2, operand_1 = stack.pop(), stack.pop() 
        add_to_stack(operand_1.send(input.to_sym, operand_2))
      end

      stack.last
    end

    private

    def add_to_stack(value)
      stack.push(value)
    end 
  end
end