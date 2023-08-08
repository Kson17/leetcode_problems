# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  # define counter hash
  counter = {}
  frequency = []

  # loop over nums array
  nums.each do |num|
    # add num as key to counter and increment the count as value
    counter[num] = (counter[num] || 0) + 1
  end

  counter.each do |key, v|
    # bucket sort to reduce TC
    frequency[v] = (frequency[v] || []) << key
  end

  frequency.compact.flatten.last(k)
end
