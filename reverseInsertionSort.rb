=begin
Reverse Insertion Sort:
Given an array of numbers, sort them from greatest to least
=end

array = [2,5,3,9,7,1,6]

for j in 1..array.length - 1
  key = array.at(j)
  i = j - 1
  while i >= 0 && key > array.at(i)
    array[i+1] = array.at(i)
    i = i-1
  end
  array[i + 1] = key
end

puts array
