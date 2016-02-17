require_relative './substring'
describe Substring do
  it 'should return an empty hash if given the input "cat"' do
	 substring = Substring.new
	 dictionary = %w(hello how are you going down there here is the low word or his story)
	 result = substring.find_substring("cat", dictionary)
	 expect(result).to eq ({})
  end

  it 'should return {"is" => 1} if the input is "is"' do
	 substring = Substring.new
	 dictionary = %w(hello how are you going down there here is the low word or his story)
	 result = substring.find_substring("is", dictionary)
	 expect(result).to eq ({"is"=>1})
  end

  it 'should return {"is" => 1, "his" => 1} if the input is "his"' do
	 substring = Substring.new
	 dictionary = %w(hello how are you going down there here is the low word or his story)
	 result = substring.find_substring("his", dictionary)
	 expect(result).to eq ({"is"=>1, "his"=>1})
  end

  it 'should return {"is" => 1, "his" => 1, "there" => 1, "here" => 1, "the" => 1} if the input is "his there"' do
	 substring = Substring.new
	 dictionary = %w(hello how are you going down there here is the low word or his story)
	 result = substring.find_substring("his there", dictionary)
	 expect(result).to eq ({"is"=>1, "his"=>1, "there"=>1, "the" => 1,  "here"=>1})
  end
end

