class StringCalculator
  def add(input)
     return 0 if input.strip.empty? #handling empty string 
	   input.split(/,|\n/).map(&:to_i).sum
  end
end
