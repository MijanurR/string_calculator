require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  it "returns 0 for empty string" do
    expect(StringCalculator.new.add("")).to eq(0)
  end
  
  it "returns the number itself for a single number input" do
      expect(StringCalculator.new.add("1")).to eq(1)
  end


  it "returns the sum of two comma-separated numbers" do
    expect(StringCalculator.new.add("1,2")).to eq(3)
  end

  it "returns the sum of numbers separated by newline" do
    expect(StringCalculator.new.add("1\n2,3")).to eq(6)
  end

  it "supports custom delimiter defined at the start" do
    expect(StringCalculator.new.add("//;\n1;2")).to eq(3)
  end

  it "raises an exception with message for negative numbers" do
    expect {
      StringCalculator.new.add("1,-2,3,-4")
    }.to raise_error("Negatives not allowed: -2, -4")
  end

end

