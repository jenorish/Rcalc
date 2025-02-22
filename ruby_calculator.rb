class RubyCalculator
  DEFAULT_DELIMITERS = /;|\n|\*|\%/.freeze # Add delimiters here
  def self.add(numbers)
    return 0 if numbers.empty?
    # Removing delimiter
    nums = parse_numbers(numbers)
    validate_negatives(nums)
    nums.sum
  end

  # Parses the numbers using the given delimiter and converts them to integers
  def self.parse_numbers(numbers)
   numbers.gsub(DEFAULT_DELIMITERS, ",").split(",").map(&:to_i)
  end

  # Checks for negative numbers and raises an error if found
  def self.validate_negatives(nums)
    negatives = nums.select(&:negative?)
    raise "negative numbers not allowed #{negatives.join(',')}" unless negatives.empty?
  end
end

