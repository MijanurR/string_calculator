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

    input.split(delimiter).map(&:to_i).sum
  end
end
