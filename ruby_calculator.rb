class RubyCalculator
  DEFAULT_DELIMITERS = /;|\n/.freeze
  def self.add(numbers)
    return 0 if numbers.empty?
    # Removing delimiter
    nums = parse_numbers(numbers)
    nums.sum
  end

  # Parses the numbers using the given delimiter and converts them to integers
  def self.parse_numbers(numbers)
   numbers.gsub(DEFAULT_DELIMITERS, ",").split(",").map(&:to_i)
  end
end


