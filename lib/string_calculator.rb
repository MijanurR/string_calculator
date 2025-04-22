class StringCalculator
  def add(input)
     return 0 if input.strip.empty? #handling empty string 
	   delimiter = /,|\n/
    if input.start_with?("//")
      parts = input.split("\n", 2)
      custom_delimiter = Regexp.escape(parts[0][2..])
      delimiter = /#{custom_delimiter}/
      input = parts[1]
    end

    values = input.split(delimiter).map(&:to_i)
    negatives = values.select { |n| n < 0 }
    raise "Negatives not allowed: #{negatives.join(', ')}" if negatives.any?
    values.sum
  end
end
