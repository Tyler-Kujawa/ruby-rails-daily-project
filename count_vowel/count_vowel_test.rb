require_relative './count_vowel'

describe String do
  it "can iterate over each of the characters it contains and peform an operation" do

  	result = []

  	"sample".each_char do |char|
  		result << char
  	end

  	result.should == %w{s a m p l e}
  end

	it "can be asked the number of vowels it contains" do
		'Barnes'.vowel_count.should == 2
		'Barnes and Nobels'.vowel_count.should == 5
	end
end