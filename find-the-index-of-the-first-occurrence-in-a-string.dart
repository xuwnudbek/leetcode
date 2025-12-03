void main() {
  Solution solution = Solution();

  var res = solution.strStr("asasadbutsad", "ssad");

  print(res);
}

class Solution {
  int strStr(String haystack, String needle) {
    return haystack.indexOf(needle);
  }
}
