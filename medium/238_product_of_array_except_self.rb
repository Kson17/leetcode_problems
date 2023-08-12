# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  result_array = []

  current_product = 1
  nums.each do |num|
    result_array << current_product
    current_product *= num
  end

  current_product = 1
  nums.reverse_each.with_index do |num, i|
    result_array[-(i+1)] = result_array[-(i+1)] * current_product
    current_product *= num
  end

  result_array
end
