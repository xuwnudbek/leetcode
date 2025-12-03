void main() {
  Solution solution = Solution();

  var res = solution.searchInsert([1, 2, 3, 4], 7);

  print(res);
}

class Solution {
  int searchInsert(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      int item = nums[i];
      if (item > target) {
        return i;
      }
    }

    return nums.length;
  }
}
