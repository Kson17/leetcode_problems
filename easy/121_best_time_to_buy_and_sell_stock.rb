# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  buy_price = prices[0]
  max_profit = 0

  for price in prices do
    if buy_price > price
      buy_price = price
    else
      potential_max_profit = price - buy_price
      max_profit = potential_max_profit > max_profit ? potential_max_profit : max_profit
    end
  end

  max_profit
end
