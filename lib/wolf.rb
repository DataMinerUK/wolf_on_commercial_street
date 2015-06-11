def wolf(stock_price)
  daily_price = stock_price.dup
  buy_profit = day_to_buy(stock_price) # Can only call day_to_buy once as it changes the array
  buy_day = buy_profit['buy_day']
  profit = buy_profit['max_profit']
  sell_price = daily_price[buy_day] + profit
  sell_day = daily_price[buy_day..daily_price.length-1].index(sell_price) + buy_day
  {'buy_day' => buy_day, 'sell_day' => sell_day}
end

def day_to_buy(stock_price)
  maximums = list_of_differences(stock_price).map{|i| i.max}
  { 'buy_day' => maximums.index(maximums.max), 'max_profit' => maximums.max}
end

def list_of_differences(stock_price)
  a = []
  (stock_price.length-1).times do
    a.push(differences(stock_price))
    stock_price.shift
  end
  a
end

def differences(list)
  list[1..list.length].map{|l| l - list[0]}
end
