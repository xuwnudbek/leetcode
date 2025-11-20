void main() {
  final Solution solution = Solution();

  var res = solution.findKDistantIndices([3, 4, 9, 1, 3, 9, 5], 9, 1);

  print("isValid: $res");
}

class Solution {
  List<int> findKDistantIndices(List<int> nums, int key, int k) {
    int len = nums.length;

    List<int> keyIndices = [];

    for (int i = 0; i < len; i++) {
      if (nums[i] == key) {
        keyIndices.add(i);
      }
    }

    List<List<int>> intervals = [];

    for (int j in keyIndices) {
      int left = (j - k < 0) ? 0 : j - k;
      int right = (j + k >= len) ? len - 1 : j + k;

      if (intervals.isEmpty || left > intervals.last[1]) {
        intervals.add([left, right]);
      } else {
        intervals.last[1] = right;
      }
    }

    List<int> result = [];

    for (List<int> range in intervals) {
      for (var x = range[0]; x <= range[1]; x++) {
        result.add(x);
      }
    }

    return result;
  }
}

// LeetCode #1
/*
class Solution {
  List<int> findKDistantIndices(List<int> nums, int key, int k) {
    int n = nums.length;

    List<int> diff = List.filled(n + 1, 0);

    for (int i = 0; i < n; i++) {
      if (nums[i] == key) {
        int left = i - k;
        if (left < 0) left = 0;
        int right = i + k;
        if (right >= n) right = n - 1;
        diff[left]++;
        diff[right + 1]--;
      }
    }
    List<int> result = [];
    int count = 0;
    for (int i = 0; i < n; i++) {
      count += diff[i];
      if (count > 0) result.add(i);
    }
    return result;
  }
}
*/
