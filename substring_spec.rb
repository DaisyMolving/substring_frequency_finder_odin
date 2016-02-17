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

end

