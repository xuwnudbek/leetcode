import 'dart:async';

void main() {
  Solution solution = Solution();

  List<int> nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];

  int k = solution.removeDuplicates(nums);
  print('Number of unique elements: $k');
}

class Solution {
  int removeDuplicates(List<int> nums) {
    int k = 1;
    int count = 1;

    for (var i = 1; i < nums.length; i++) {
      print(count++);
      if (nums[i] != nums[i - 1]) {
        nums[k++] = nums[i];
      }
    }

    return k;
  }
}
