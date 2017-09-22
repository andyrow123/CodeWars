# Given an array, find the int that appears an odd number of times.
#
# There will always be only one integer that appears an odd number of times.

def find_it(seq)
  counts = Hash.new 0

  seq.each do |num|
    counts[num] += 1
  end

  counts.each {|item|
    return item[0] if item[1].odd?
  }
end

find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])