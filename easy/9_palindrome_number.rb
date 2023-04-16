require 'pry'

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x < 0

  chars = x.to_s.split('')
  size = chars.size
  index_left = 0
  index_right = -1

  while size > index_left
    return false if chars[index_left] != chars[index_right]

    index_left += 1
    index_right -= 1
  end

  true
end
