# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = {}
  index = 0

  for num in nums do
    hash[num] = index if hash[num] == nil
    potential_index = hash[target - num]

    if potential_index != nil && potential_index != hash[num]
      return [hash[target - num], hash[num]]
    elsif potential_index != nil && hash[num] != index
      return [hash[target - num], index]
    end

    index += 1
  end
end
