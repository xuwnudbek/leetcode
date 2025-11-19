void main() {
  final Solution solution = Solution();

  // var res = solution.kMirror(2, 5); // Expected output: 25
  // var res = solution.kMirror(7, 17); // Expected output: 20379000
  // var res = solution.kMirror(9, 16); // Expected output: 10089
  // var res = solution.kMirror(5, 7); // Expected output: 356
  var res = solution.kMirror(3, 7); // Expected output: 499

  print("result: $res");
}

class Solution {
  bool isMirror(int n) {
    int originalN = n;
    int rev = 0;

    while (n > 0) {
      rev *= 10;
      rev += n % 10;
      n ~/= 10;
    }

    return rev == originalN;
  }

  int kMirror(int k, int n) {
    int s = 0;
    int number = 1;
    int count = 0;

    while (count < n) {
      bool isDoubleMirr = isMirror(number);

      if (isDoubleMirr) {
        isDoubleMirr = isMirror(number.toRadixString(k).codeUnits.fold<int>(0, (prev, elem) => prev * 10 + (elem - '0'.codeUnitAt(0))));
        if (isDoubleMirr) {
          s += number;
          count++;
        }
      }

      number++;
    }

    return s;
  }
}
