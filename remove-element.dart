main() {
  Solution solution = Solution();

  List<int> arrs = [3, 2, 2, 3];

  var res = solution.removeElement(arrs, 3);

  print("Arrs: $arrs");
  print("Res: $res");
}

class Solution {
  int removeElement(List<int> nums, int val) {
    int j = 0;
    int k = 0;

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != val) {
        nums[j] = nums[i];
        k++;
      }
    }

    return k;
  }
}
