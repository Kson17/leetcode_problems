# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
  index = 0
  total_sum = 0
  left_sum = 0

  for num in nums do
    total_sum += num
  end

  for num in nums do
    right_sum = total_sum - left_sum - num

    if left_sum == right_sum
      return index
    end

    left_sum += num
    index += 1
  end

  return -1
end
