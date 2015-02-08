def bubble_sort array
	array.length.times do
		(array.length - 1).times do |i|
			if array[i] > array[i + 1]
				sub = array[i + 1]
				array[i + 1] = array[i]
				array[i] = sub
			end
		end
	end
	array
end
def bubble_sort_by array
	array.length.times do
		(array.length - 1).times do |i|
			if yield(array[i], array[i + 1]) < 0
				sub = array[i + 1]
				array[i + 1] = array[i]
				array[i] = sub
			end
		end
	end
	array
end
puts bubble_sort [5,12,46,34,1,2,5]
puts bubble_sort_by (["hi","hello","hey"]) { |left,right| right.length - left.length }