module ReversePolishNotation
  module Providers
    class Cli < Base
      
      def initialize
        @input_method = STDIN
        @output_method = STDOUT
      end

      def read
        input_method.gets
      end

      def write(output)
        output_method.puts "> #{output}"
      end
    end
  end
end