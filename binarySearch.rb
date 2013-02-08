=begin
Binary search. Find the index of a number in a set of 1000 random numbers
with a range of 1 - 3000.
Output is the index of "nothing" if the number is not found in the set.
=end

def findIndexOf(v)
  numbers = []
  file = File.open("1000randomNumbers.txt") or die "Unable to open file"
  file.each_line {|line| numbers.push Integer(line) }

  high = numbers.length - 1
  low = 0
  
  while low <= high
    mid = (high + low) / 2
    if numbers[mid] == v
      return mid
    elsif v > numbers[mid]
      low = mid + 1
    elsif v < numbers[mid]
      high = mid - 1
    end
  end
  return "nothing"  
end

puts(findIndexOf(500))


  
  