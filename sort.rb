def insertion_sort(arr)
  sorted = []<< arr[0].shift
  until arr.empty?
    insert(sorted, sorted.length - 1, arr.shift)
  end
  sorted
end

#
def insert(array, right_index, value)
  i = right_index
  while(i >= 0 && array[i] > value)
    array[i+1] = array[i]
    i -= 1
  end
  array[i+1] = value;
end

insertion_sort([1,3,2])
