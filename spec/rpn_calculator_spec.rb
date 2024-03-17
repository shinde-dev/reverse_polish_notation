require "spec_helper"

RSpec.describe ReversePolishNotation::RPNCalculator do

  it "should calculate arithmetic operations using reverse polish notation" do
    expect(ReversePolishNotation::RPNCalculator.new.calculate(%w(2 3 +))).to eq 5.0
    expect(ReversePolishNotation::RPNCalculator.new.calculate(%w(5 10 + 2 *))).to eq 30.0
    expect(ReversePolishNotation::RPNCalculator.new.calculate(%w(15 7 1 1 + - / 3 * 2 1 1 + + -))).to eq 5.0
  end

  it "should throw errors with invalid inputs" do
    #StandardError
    expect{ ReversePolishNotation::RPNCalculator.new.calculate(%w(a)) }.to raise_error(StandardError)

    #InvalidInput
    expect{ ReversePolishNotation::RPNCalculator.new.calculate(%w(/)) }.to raise_error(InvalidInput, "Input is not valid")
  end  
end