def wolf_on_commercial_street(stock_prices)
  buy_sell_combinations = stock_prices.combination(2).to_a
  profit_loss = buy_sell_combinations.map{|buy, sell| sell - buy}
  day_keys = (0..stock_prices.length - 1).to_a.combination(2).to_a
  stocks_hash = Hash[day_keys.zip(profit_loss)]
  best_combo = stocks_hash.key(profit_loss.max)
  {'buy_day': best_combo[0], 'sell_day': best_combo[1]}
end
