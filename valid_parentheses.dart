void main() {
  final Solution solution = Solution();

  var res = solution.isValid("({}[])");

  print("isValid: $res");
}

class Solution {
  bool isValid(String s) {
    var match = RegExp(r"\(\)|\[\]|\{\}");

    while (match.hasMatch(s)) {
      s = s.replaceAll(match.firstMatch(s)!.group(0)!, "");
    }

    return s.isEmpty;
  }
}
