class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
    else
      delimiter = ","
    end

    num_list = numbers.split(/[\n#{Regexp.escape(delimiter)}]/).map(&:to_i)
    
    negatives = num_list.select { |n| n.negative? }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?

    num_list.sum
  end
end