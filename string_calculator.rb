class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    expression = /,|\n|;/
    
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      numbers = parts[1]
    end

    number_list = numbers.split(/#{expression}/).map(&:to_i)
    negatives = number_list.select { |n| n < 0 }
    return "Negative numbers not allowed : #{negatives.join(', ')}" if negatives.any?
    number_list.sum
  end
end

numbers =  "//;\n1;2"
numbers1 = ""
numbers2 = "1"
numbers3 = "1,5"
numbers4 = "1\n2,3"
numbers5 = "//;\n1;2,-7, -9" 
p StringCalculator.add(numbers)
p StringCalculator.add(numbers1)
p StringCalculator.add(numbers2)
p StringCalculator.add(numbers3)
p StringCalculator.add(numbers4)
p StringCalculator.add(numbers5)
