# Given a set of numbers, return the additive inverse of each. Each positive becomes negatives, and the negatives become positives.
#
# invert([1,2,3,4,5]) == [-1,-2,-3,-4,-5]
# invert([1,-2,3,-4,5]) == [-1,2,-3,4,-5]
# invert([]) == []
# You can assume that all values are integers.

def invert(list)
  result = []
  list.each do |item| result.push(item * -1) end
  result
end

puts invert([1,2,3,4,5])
puts invert([-1,2,-3,4,-5])
