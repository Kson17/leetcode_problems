# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  i = 0
  j = -1

  while numbers[i] + numbers[j] != target
    sum = numbers[i] + numbers[j]
    if sum > target
      j -= 1
    elsif sum < target
      i += 1
    end
  end

  [i + 1, (numbers.size + j) + 1]
end
