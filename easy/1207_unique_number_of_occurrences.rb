# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
  dict = {}

  for e in arr do
    if dict[e] != nil
      dict[e] += 1
    else
      dict[e] = 1
    end
  end

  occurences = {}
  for value in dict.values do
    if occurences[value] == nil
      occurences[value] = 1
    else
      return false
    end
  end

  true
end
