# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  # define hash where anagrams will be grouped
  hash = {}

  strs.each do |str|
    count = [0] * ('a'..'z').to_a.count

    str.split('').each do |char|
      count[char.ord - 'a'.ord] += 1
    end

    hash[count] = (hash[count] || []) << str
  end

  hash.values
end
