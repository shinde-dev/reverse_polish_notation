require_relative '../reverse_polish_notation'

namespace :calculate_by_rpn do
  desc 'Perform arithmetic operations using reverse polish notation'
  task :cli do
    provider = ReversePolishNotation::Providers::Base.get_provider("cli")
    ReversePolishNotation::RPNExecutor.execute(provider)
  end
end