#sort.rb

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

def bubble_sort(arr)
  temp = arr
  i = 0
  while i < arr.length - 1
    index_one = 0
    index_two = index_one + 1
    
    (arr.length - 1 - i).times do
      if arr[index_one] > arr[index_two]
        #swaps
        temp = arr[index_one] 
        arr[index_one] = arr[index_two]
        arr[index_two] = temp
      end
      index_one += 1
      index_two += 1
    end
    i += 1
  end
  arr
end


#testing



#insertion_sort
# p insertion_sort([1,3,2])
# p insertion_sort( [1,3,7,2,5] )

#bubble_sort
#a = [1,3,7,2,5]
#p bubble_sort(a)

