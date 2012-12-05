=begin
Extending insertion sort
Find the first repeating character in a string, if none, print "none"
=end
word = "abcdefghijklmnopqrstuvwxyza"
index = 1
for i in index..word.length-1
  n = i
  while i > 0
    if word[n] == word[i-1]
      puts word[n]
      return
    end
    i-=1
  end
end
puts "none"