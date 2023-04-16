# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  length = 0

  for num in nums do
    if num != nums[length]
      length += 1
      nums[length] = num
    end
  end

  length + 1
end
