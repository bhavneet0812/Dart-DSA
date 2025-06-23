class Solution {
  int maxProfit(List<int> prices) {
    int profit = 0;
    for (int i = 1; i < prices.length; i++) {
      int diff = prices[i] - prices[i - 1];
      if (diff > 0) profit += diff;
    }
    return profit;
  }
}

void main() {
  final solution = Solution();

  // Example 1
  List<int> prices1 = [7, 1, 5, 3, 6, 4];
  print(solution.maxProfit(prices1)); // Output: 7

  // Example 2
  List<int> prices2 = [1, 2, 3, 4, 5];
  print(solution.maxProfit(prices2)); // Output: 4

  // Example 3
  List<int> prices3 = [7, 6, 4, 3, 1];
  print(solution.maxProfit(prices3)); // Output: 0
}
