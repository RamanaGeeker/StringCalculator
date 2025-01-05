require './string_calculator'

RSpec.describe StringCalculator do

  it "should return 0 for an empty string" do
    expect(StringCalculator.add("")).to eq(0)
  end

  it "should return number if only one number is provided" do
	  expect(StringCalculator.add("1")).to eq(1)
	end

	it "should return sum of two numbers" do
	  expect(StringCalculator.add("1,2")).to eq(3)
	end
	
	it "should supports the regulor expressions ang give sum" do
	  expect(StringCalculator.add("//;\n1;2")).to eq(3)
	end

	it "should return sum when newline between the numbers" do
	  expect(StringCalculator.add("1\n2,3")).to eq(6)
	end

	it "should give error for negative numbers" do
	  res = StringCalculator.add("//;\n1;2,-7")
	  expect(res).to eq("Negative numbers not allowed : -7")
	end

end
