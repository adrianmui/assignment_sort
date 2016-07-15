def insertion_sort(arr)
  sorted = []<< arr.shift
  until arr.empty?
    insert(sorted, sorted.length - 1, arr.shift)
  end
  sorted
end

#
def insert(sorted_array, right_index, value)
  i = right_index
  while(i >= 0 && sorted_array[i] > value)
    sorted_array[i+1] = sorted_array[i]
    i -= 1
  end
  sorted_array[i+1] = value;
end

p insertion_sort([1,3,2])
p insertion_sort( [1,3,7,2,5] )
