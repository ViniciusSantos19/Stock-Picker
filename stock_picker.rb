def stock_picker(prices)
  profit = 0

  for i in 0...prices.size
    for j in (i + 1)...prices.size
      next unless prices[j] - prices[i] > profit

      profit = prices[j] - prices[i]
      buyday = i
      sellday = j
    end
  end
  [buyday, sellday]
end

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
