# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def count_odds(low, high)
  odd_count = 0
  odd_count += 1 if low % 2 != 0 || high % 2 != 0
  odd_count += (high - low) / 2
end
