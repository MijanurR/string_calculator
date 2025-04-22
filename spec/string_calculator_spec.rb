require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  it "returns 0 for empty string" do
    expect(StringCalculator.new.add("")).to eq(0)
  end
  
  it "returns the number itself for a single number input" do
      expect(StringCalculator.new.add("1")).to eq(1)
  end
end

