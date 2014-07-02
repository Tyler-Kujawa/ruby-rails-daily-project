require_relative '../reverse_a_string/lib/reverse_string.rb'
require 'test/unit'

class TestReverseString < Test::Unit::TestCase
	def test_reverse_string
		assert_equal('yt', 'ty'.reverse_str_1)
	end
end