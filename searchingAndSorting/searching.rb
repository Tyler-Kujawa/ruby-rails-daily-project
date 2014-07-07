class Array
	def binary_search(key)
		return "Not a valid interger" if key.class != Fixnum

		lower_bound, upper_bound, mid = 0, self.length - 1, 0
		while lower_bound <= upper_bound
			mid = (lower_bound + upper_bound)/2
			case 
				when self[mid] > key then upper_bound = mid -1
				when self[mid] < key then lower_bound = mid +1
				else return mid
			end
		end
		nil
	end

	def binary_search_by_recursion(lower_bound=0, upper_bound=(self.length-1), key)
		return nil if upper_bound < lower_bound
		mid = (lower_bound + upper_bound)/2
		case 
			when self[mid] < key then binary_search_by_recursion(mid + 1, upper_bound, key)
			when self[mid] > key then binary_search_by_recursion(lower_bound, mid - 1, key)
			else mid 
		end
	end
end