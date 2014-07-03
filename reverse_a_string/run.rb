require_relative '../reverse_a_string/lib/reverse_string.rb'
require 'test/unit'

class TestReverseString < Test::Unit::TestCase
	def test_reverse_by_iteration
		assert_equal('yt', 'ty'.reverse_by_iteration!)
		assert_equal('jazz piano'.reverse!, 'jazz piano'.reverse_by_iteration!)
	end

	def test_reverse_in_place!
		assert_equal('yt', 'ty'.reverse_in_place!)
		assert_equal('jazz piano'.reverse!, 'jazz piano'.reverse_in_place!)
	end
end