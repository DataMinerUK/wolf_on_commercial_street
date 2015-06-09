Wolf on Commercial Street
=========================

Your objective is to write a method that will work out the best days to buy and sell a stock. For example, take an array of stock prices:

stockprice = [10,2,5,8,9,1,6,7,9,8]

Indices reprepresent days. So on Day 0, the price of the stock was 10. On Day 1, 2. On Day 2, 5. And so on. Your task is to work out which buy day/sell day produces the biggest return. In this instance, buying on Day 5 and selling on Day 8 yields a profit of 8 (9 - 1). This is the most profitable combination.

Your method should return the buy day and sell day in a hash. In this instance:

method_name(stock_price) #=> { buy_day: 5, sell_day: 9 }

p.s no shorting.
