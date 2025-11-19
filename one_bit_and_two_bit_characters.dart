void main() {
  final Solution solution = Solution();

  var res = solution.isOneBitCharacter([1, 1, 1, 0]);

  print("isOneBitCharacter: $res");
}

class Solution {
  bool isOneBitCharacter(List<int> bits) {
    if (bits.length == 1 && bits[0] == 0) return true;

    int step = 0;

    while (step < bits.length) {
      int i = bits[step];

      if (i == 1) {
        step += 2;
      } else {
        step++;
      }

      if (step == bits.length - 1) return true;
    }

    return step != bits.length;
  }
}
