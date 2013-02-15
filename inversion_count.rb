def merge_sort_and_count(array)
  
  count = 0
  if array.count <= 1 
    return array, 0
  end
  
  left_array = array[0..array.count/2 - 1]
  right_array = array[array.count/2..array.count]
  
  left_array, left_count = merge_sort_and_count(left_array)
  right_array, right_count = merge_sort_and_count(right_array)
  
  count = count + left_count + right_count
  
  return merge_and_count(left_array, right_array, count)
  
end

def merge_and_count(left_array, right_array, inversion_count)
  sorted_array = []
  
  
  while left_array.count > 0 or right_array.count > 0
    
    if left_array.count > 0 and right_array.count > 0
      if left_array.first <= right_array.first
        sorted_array.push(left_array.first)
        left_array = left_array.drop(1)
      else
        sorted_array.push(right_array.first)
        right_array = right_array.drop(1)
        inversion_count = inversion_count + left_array.count
      end
    elsif left_array.count > 0
      sorted_array.concat(left_array)
      #inversion_count = inversion_count + left_array.count
      left_array = left_array.drop(left_array.count)
      
    elsif right_array.count > 0
      sorted_array.concat(right_array)
      right_array = right_array.drop(right_array.count)
      
    end
  end
  
  
  return sorted_array, inversion_count
  
end

array = []
file = File.open("IntegerArray.txt") or die "Unable to open file"
file.each_line {|line| array.push Integer(line) }
puts merge_sort_and_count(array)