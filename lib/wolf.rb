def wolf(stocks)
  stocks2 = stocks
  p stocks2
  p (day_to_buy(stocks)['buy_day']).class
  buy_day = day_to_buy(stocks)['buy_day']
  p buy_day.class
  p stocks2[buy_day]
  # sell_price = stock_price[day_to_buy(stock_price)['buy_day']] + day_to_buy(stock_price)['max_profit']
  # sell_day = stock_price.index(sell_price)
  # {'buy_day' => day_to_buy(stock_price)['buy_day'], 'sell_day' => sell_day}
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
