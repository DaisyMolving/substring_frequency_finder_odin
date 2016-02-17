class Substring 

  def find_substring(input, dictionary)
	
	 substring_frequency = Hash.new(0)
	 dictionary.each do |word|
		if input.include? word
		  substring_frequency[word] += 1
		end
	 end
	 substring_frequency
  end
end
