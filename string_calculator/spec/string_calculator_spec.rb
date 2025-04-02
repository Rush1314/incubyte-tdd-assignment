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

  it "handles new lines between numbers" do
    calculator = StringCalculator.new
    expect(calculator.add("1\n2,3")).to eq(6)
  end
  
  it "supports custom delimiter defined in the format '//[delimiter]\\n[numbers]'" do
    calculator = StringCalculator.new
    expect(calculator.add("//;\n1;2")).to eq(3)
  end

  it "raises an exception for negative numbers" do
    calculator = StringCalculator.new
    expect { calculator.add("1,-2,3,-4") }
      .to raise_error("Negative numbers not allowed: -2, -4")
  end
end