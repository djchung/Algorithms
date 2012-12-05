=begin
Insertion Sort:
Given an array of numbers, order them from least to greatest
=end
array = [8, 2, 4, 9, 3, 6]
index = 1
for i in index..array.length-1
  while i > 0
    if array[i] < array[i-1]
      value = array[i-1]
      array[i-1] = array[i]
      array[i] = value
    end
    i -= 1
  end
end

puts array