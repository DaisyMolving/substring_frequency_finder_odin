require_relative './substring'
describe Substring do
  it 'should return nil if given the input "cat"' do
	 substring = Substring.new
	 dictionary = %w(hello how are you going down there here is the low word or his story)
	 result = substring.find_substring("cat", dictionary)
	 expect(result).to eq nil
  end
end
