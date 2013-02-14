array = [10,8,1,3,6,7,2]


def merge_sort(array)

  if array.count <= 1 
    return array
  end
  
  left_array = array[0..array.count/2 - 1]
  right_array = array[array.count/2..array.count]
  
  left_array = merge_sort(left_array)
  right_array = merge_sort(right_array)
  return merge(left_array, right_array)
  
end

def merge(left_array, right_array)
  sorted_array = []
  
  while left_array.count > 0 or right_array.count > 0
    
    if left_array.count > 0 and right_array.count > 0
      if left_array.first <= right_array.first
        sorted_array.push(left_array.first)
        left_array = left_array.drop(1)
      else
        sorted_array.push(right_array.first)
        right_array = right_array.drop(1)
      end
    elsif left_array.count > 0
      sorted_array.concat(left_array)
      left_array = left_array.drop(left_array.count)
    elsif right_array.count > 0
      sorted_array.concat(right_array)
      right_array = right_array.drop(right_array.count)
      
    end
  end
  return sorted_array
  
end

puts merge_sort(array)