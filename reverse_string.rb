=begin
reverse a string
=end

def reverse_string(my_string)
  front_index = 0
  back_index = my_string.length - 1
  while front_index < back_index
    temp_string = my_string[front_index]
    my_string[front_index] = my_string[back_index]
    my_string[back_index] = temp_string
    front_index += 1
    back_index -= 1
  end
  return my_string
end

puts reverse_string("drawer")