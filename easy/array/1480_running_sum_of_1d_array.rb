# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
  final_nums = []
  counter = 0

  for num in nums do
    if final_nums.length == 0
      final_nums[counter] = num
    else
      final_nums[counter] = final_nums[counter-1] + num
    end
    counter += 1
  end
  final_nums
end
