# Write a function called validParentheses that takes a string of parentheses, and determines if the order of the parentheses is valid.
# validParentheses should return true if the string is valid, and false if it's invalid.
#
# Examples:
# validParentheses( "()" ) => returns true
# validParentheses( ")(()))" ) => returns false
# validParentheses( "(" ) => returns false
# validParentheses( "(())((()())())" ) => returns true
#
# Constraints:
# 0 <= input.length <= 100
# Along with opening (() and closing ()) parenthesis, input can contain any valid ASCII characters.
#
# Note: In the JavaScript and Go version of this Kata, input will only contain opening and closing parenthesis and will not be an empty string.


def valid_parentheses(string)
  letters = string.split("")
  closed = true
  letters.each do |item|
    closed = false if item == "("
    closed = true if item == ")"
  end
  return (string.count('(') != string.count(')')) || closed != true ? false : true
end
#
# valid_parentheses("(")