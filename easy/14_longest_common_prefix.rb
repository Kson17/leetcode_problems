# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  strs_size = 0
  dict = {}
  result = ''

  for str in strs do
    strs_size += 1
  end

  return strs.first if strs_size == 1

  for str in strs do
    str_as_arr = str.split('')
    index = 0

    for char in str_as_arr do
      if dict[char + index.to_s].nil?
        dict[char + index.to_s] = 1
      else
        dict[char + index.to_s] += 1
      end

      index +=1
    end
  end

  return '' if dict.empty?

  dict.each do |k,v|
    if v == strs_size
      result << k[0]
    else
      return result
    end
  end

  result
end
