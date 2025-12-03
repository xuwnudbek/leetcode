void main() {
  Solution solution = Solution();

  var res = solution.lengthOfLastWord("Hello World");

  print(res);
}

class Solution {
  int lengthOfLastWord(String s) {
    return s.trim().split(" ").last.length;
  }
}
