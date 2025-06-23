class Solution {
  int maxProfit(List<int> prices) {
    int minPrice = prices[0];
    int maxProfit = 0;

    for (int i = 1; i < prices.length; i++) {
      if (prices[i] < minPrice) {
        minPrice = prices[i]; // update min price
      } else {
        int profit = prices[i] - minPrice;
        if (profit > maxProfit) {
          maxProfit = profit; // update max profit
        }
      }
    }

    return maxProfit;
  }
}

void main() {
  final solution = Solution();

  // Example 1
  List<int> prices1 = [7, 1, 5, 3, 6, 4];
  print(solution.maxProfit(prices1)); // Output: 5

  // Example 2
  List<int> prices2 = [7, 6, 4, 3, 1];
  print(solution.maxProfit(prices2)); // Output: 0

  // Example 3
  List<int> prices3 = [1, 2];
  print(solution.maxProfit(prices3)); // Output: 1
}
