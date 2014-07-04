require 'test/unit'
class String

	VOWELS = ['a', 'e', 'i', 'o', 'u']

	def to_pig_latin!
		words = self.split
		output = ""

		words.each_with_index do |word, index|
			first_char = word[0]

			if(VOWELS.include?(first_char.downcase)) 
				output += word + "way"
			else 
				output += word[1..-1] + first_char + "ay"
			end
			output += " " unless words.length.eql?(index + 1)
		end
		self.replace(output)
	end

	def decode_pig_latin!
		words = self.split
		output = ""
		words.each_with_index do |word, index|
			string_with_ay_removed = word[0..-3]
			first_char = word[0]

			if(string_with_ay_removed[-1].downcase.eql?('w') && VOWELS.include?(first_char.downcase))
				output += string_with_ay_removed[0..-2]
			else
				puts string_with_ay_removed[0..-2]
				output += string_with_ay_removed[-1] + string_with_ay_removed[0..-2]
			end
			output += " " unless words.length.eql?(index + 1)
		end
		self.replace(output)
	end
end

class PigLatinTest < Test::Unit::TestCase
	def test_to_pig_latin!
		assert_equal('appyhay', 'happy'.to_pig_latin!)
		assert_equal('uckday', 'duck'.to_pig_latin!)
		assert_equal('appyhay uckday', 'happy duck'.to_pig_latin!)
		assert_equal('inboxway', 'inbox'.to_pig_latin!)
	end

	def test_decode_pig_latin!
		assert_equal('happy', 'appyhay'.decode_pig_latin!)
		assert_equal('duck', 'uckday'.decode_pig_latin!)
		assert_equal('happy duck', 'appyhay uckday'.decode_pig_latin!)
		assert_equal('inbox', 'inboxway'.decode_pig_latin!)
	end
end
