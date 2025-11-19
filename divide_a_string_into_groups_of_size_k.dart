void main() {
  final Solution solution = Solution();

  var res = solution.divideString("abcdefghi", 3, "x");

  print("result: $res");
}

class Solution {
  List<String> divideString(String s, int k, String fill) {
    List<String> res = [];

    int q = s.length % k;

    s += fill * (q == 0 ? 0 : k - q);

    while (s.length != 0) {
      res.add(s.substring(0, k));
      s = s.substring(k, s.length);
    }

    return res;
  }
}
