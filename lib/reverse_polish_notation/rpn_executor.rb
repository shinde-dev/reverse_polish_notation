module ReversePolishNotation
  class RPNExecutor
    class << self
      def execute(provider)
        raise InvalidProvider, "Unable to execute without provider" unless provider

        rpn_calculator = ReversePolishNotation::RPNCalculator.new

        while((input = provider.read)) do
          begin
            input = input.chomp.split()
            exit if is_exit_command?(input)
            provider.write rpn_calculator.calculate(input)
          rescue StandardError => e
            puts e.message
          end
        end
      end

      private
      def is_exit_command?(input)
        return false unless input
        input == ['q'] || input == 'q' || input.empty? 
      end
    end
  end
end