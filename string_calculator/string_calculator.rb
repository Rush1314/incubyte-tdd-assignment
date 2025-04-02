class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter, numbers = extract_delimiter(numbers)
    num_list = parse_numbers(numbers, delimiter)

    check_negatives(num_list)

    num_list.sum
  end

  private

  def extract_delimiter(numbers)
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      [parts.first[2..], parts.last]
    else
      [",", numbers]
    end
  end

  def parse_numbers(numbers, delimiter)
    numbers.split(/[\n#{Regexp.escape(delimiter)}]/).map(&:to_i)
  end

  def check_negatives(num_list)
    negatives = num_list.select(&:negative?)
    raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
  end
end