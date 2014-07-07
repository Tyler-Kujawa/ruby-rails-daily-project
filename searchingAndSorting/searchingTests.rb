require 'test/unit'
require_relative './searching'

class SearchingTests < Test::Unit::TestCase
	def test_binary_search
		assert_equal(2, [1,3,4,5,6,7,9].binary_search(4))
		assert_equal(5, [1,3,4,5,6,7,9].binary_search(7))
	end

	def test_binary_search_by_recursion
		assert_equal(2, [1,3,4,5,6,7,9].binary_search_by_recursion(4))
		assert_equal(5, [1,3,4,5,6,7,9].binary_search_by_recursion(7))
	end
end