require './string_calculator'

RSpec.describe StringCalculator do
  it "returns 0 for an empty string" do
    calculator = StringCalculator.new
    expect(calculator.add("")).to eq(0)
  end

  it "returns the number itself when one number is provided" do
    calculator = StringCalculator.new
    expect(calculator.add("1")).to eq(1)
  end

  it "returns sum of two numbers separated by comma" do
    calculator = StringCalculator.new
    expect(calculator.add("1,5")).to eq(6)
  end

  it "returns sum of multiple numbers separated by commas" do
    calculator = StringCalculator.new
    expect(calculator.add("1,2,3,4")).to eq(10)
  end
end