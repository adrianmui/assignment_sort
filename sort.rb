#sort.rb
require 'pry'
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


def merge_sort(arr)
  # // if the array is one element long, just return it
  return arr if arr.length == 1
  # // mergeSort() the left half of the array
  left = merge_sort(arr[0..arr.length/2-1])
  # // mergeSort() the right half of the array
  right = merge_sort(arr[arr.length/2..-1])

  # // merge() the two halves
  fin = merge(left, right)
  # // return the merged array
  fin
end

#[1, 2]  [0,3]
def merge(leftArr, rightArr)
  newArr = []
  # compare leftArr[0] and rightArr[0]
  # whichever is smaller, push it onto newArr
  while leftArr.length + rightArr.length > 0
    if leftArr.empty?
      newArr << rightArr.shift 
    elsif rightArr.empty?
      newArr << leftArr.shift
    elsif  leftArr[0] > rightArr[0]
      newArr << rightArr.shift
    else
      newArr << leftArr.shift
    end
  end
  newArr
end
#testing
#mergesort
p merge_sort( [1,3,7,2,5] )

#merge
#p merge([1,2,4,5], [0,3,10])

#insertion_sort
# p insertion_sort([1,3,2])
# p insertion_sort( [1,3,7,2,5] )

#bubble_sort
#a = [1,3,7,2,5]
#p bubble_sort(a)
