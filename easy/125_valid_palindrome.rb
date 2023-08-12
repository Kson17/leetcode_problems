# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  j = -1
  i = 0

  chars = s.downcase.gsub(/[^a-z0-9\s]/i, '').gsub(' ', '').split('')

  while chars.size / 2 > i
    first_char = chars[i]
    last_char = chars[j]
    if first_char == last_char
      i += 1
      j -= 1
    else
      return false
    end
  end
  true
end
