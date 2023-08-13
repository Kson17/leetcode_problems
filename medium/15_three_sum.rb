# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums.sort!
  result = []

  nums.each_with_index do |num, i|
    if i > 0 && num == nums[i - 1] 
      next
    end

    left, right = i + 1, nums.length - 1

    while left < right
      three_sum = num + nums[left] + nums[right]

      if three_sum > 0
        right -= 1
      elsif three_sum < 0
        left += 1
      else
        result << [num, nums[left], nums[right]]
        left += 1

        while left < right && nums[left] == nums[left -1]
          left += 1
        end
      end
    end
  end

  result
end
