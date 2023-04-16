# @param {String} s
# @return {Boolean}
def is_valid(s)
  dict = {
    '(' => ')',
    '[' => ']',
    '{' => '}'
  }
  brackets = s.split('')
  closing_brackets = []
  size = brackets.size

  return false if size % 2 != 0

  for bracket in brackets do
    if dict[bracket] != nil
      closing_brackets << dict[bracket]
    elsif closing_brackets[-1] == bracket
      size -= 2
      closing_brackets.pop
    end
  end

  size == 0
end
