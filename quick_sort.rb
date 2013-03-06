=begin
quicksort
=end

array = [3,8,2,7,4,1,5,6]
l = 0 #pivot
r = array.count - 1
def partition(array, l, r)
  p = array[l]
  i = l + 1 #index of partition
  j = l + 1 #index of position
  while j <= r
    if array[j] < p
      temp = array[j]
      array[j] = array[i]
      array[i] = temp
      i += 1
    end
    j +=1
  end
  
  temp = array[l]
  array[l] = array[i - 1]
  array[i-1] = temp
  return i - 1
  
end

def quicksort(array, l, r)
  if r - l < 1
    return array
  elsif
    i = partition(array, l, r)
    quicksort(array, l, i - 1)
    quicksort(array, i + 1, r)
  end
end

puts quicksort(array, l, r)