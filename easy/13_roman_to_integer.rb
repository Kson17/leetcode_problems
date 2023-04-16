# @param {String} s
# @return {Integer}
def roman_to_int(s)
  dict = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  numeric = 0
  index = 0
  chars = s.split('')
  for char in chars do
    if dict[chars[index + 1]] != nil && dict[char] < dict[chars[index + 1]]
      numeric -= dict[char]
    else 
      numeric += dict[char]
    end
    index += 1
  end
  numeric
end
