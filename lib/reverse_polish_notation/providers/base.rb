module ReversePolishNotation
  module Providers
    
    class Base

      attr_reader :input_method, :output_method

      def self.get_provider(provider_class)
        provider = Object.const_get "ReversePolishNotation::Providers::#{provider_class.capitalize}" rescue nil
        raise InvalidProvider, "#{provider_class.capitalize} is invalid. Please provide valid provider" unless provider
        provider.new
      end

      def read
        raise AbstractMethod, "Sublclass should implement this"
      end

      def write(output)
        raise AbstractMethod, "Sublclass should implement this"
      end
      
    end
  end
end