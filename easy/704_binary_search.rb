# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  l, r = 0, nums.length - 1  
  
  while l <= r
    m = l + ((r-l) / 2)

    if nums[m] > target
      r = m - 1
    elsif nums[m] < target
      l = m + 1
    else
      return m
    end 
  end

  return -1
end
