=begin
You are given an array prices where prices[i] is the price of a given stock on the ith day.

You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

 

Example 1:

Input: prices = [7,1,5,3,6,4]
Output: 5
Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
Example 2:

Input: prices = [7,6,4,3,1]
Output: 0
Explanation: In this case, no transactions are done and the max profit = 0.
	
=end

def buy_sell(prices)
	buy_price = prices[0] #2
	profit = 0 

	i = 0
	while(i<prices.size)
		buy_price = prices[i] if prices[i] < buy_price
		current_profit = prices[i]-buy_price #when selling at today's price
		profit = profit>current_profit ? profit:current_profit
		i = i + 1
	end
    return profit

end

puts buy_sell [7,1,5,3,6,4]
puts buy_sell [7,6,4,3,1]
puts buy_sell [2,4,1]