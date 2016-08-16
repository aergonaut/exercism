class Hamming
  def self.compute(first_string, second_string)
    raise ArgumentError if first_string.length != second_string.length

    return 0 if first_string == second_string

    # Pair off each character from the first and second string
    pairs = first_string.chars.zip(second_string.chars)
    # Count the number of pairs where the 2 elements are not equal
    pairs.count { |a, b| a != b }
  end
end
