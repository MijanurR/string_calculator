class StringCalculator
  def add(input)
     return 0 if input.strip.empty? #handling empty string 
	   return input.to_i
  end
end
