# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  left = 0
  right = height.length - 1
  result = 0

  while left < right
    lowest_heigth = [height[left], height[right]].min
    container_width = right - left
    result = [result, lowest_heigth * container_width].max

    if height[left] < height[right]
      left += 1
    elsif height[left] > height[right]
      right -= 1
    else
      if height[left + 1] > height[right - 1]
        left += 1
      else
        right -= 1
      end
    end
  end
  result
end
