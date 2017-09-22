# The goal of this exercise is to convert a string to a new string where each character in the new string is '(' if that character appears only once in the original string, or ')' if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.
#
#     Examples:
#
#     "din" => "((("
#
# "recede" => "()()()"
#
# "Success" => ")())())"
#
# "(( @" => "))(("
#
#
# Notes:
#
#     There is a flaw in the JS version, that may occur in the random tests. Do not hesitate to do several attempts before modifying your code if you fail there.
#
#     Assertion messages may be unclear about what they display in some languages. If you read "...It Should encode XXX", the "XXX" is actually the expected result, not the input! (these languages are locked so that's not possible to correct it).

def duplicate_encode(word)
  result = ""
  letter_array = word.downcase.each_char
  letter_count = letter_array.group_by(&:chr).map {|k, v| [k, v.size] }
  letter_array.each { |letter|
    letter_value = letter_count.select { |let| let[0] == letter}.map { |k, v| v.to_i}
    letter_value[0] > 1 ? result += ")" : result += "("
  }
  result
end

duplicate_encode("din")
duplicate_encode("recede")
duplicate_encode("Success")
duplicate_encode("(( @")


# 1. get letters & count how many of each
# 2. compare to original word and replace