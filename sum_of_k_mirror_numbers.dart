import 'dart:math';

void main(List<String> args) {
  var res = Solution().kMirror(2, 5);

  print("print: $res");
}

class Solution {
  bool isPal(int n) {
    int orgN = n;
    int rev = 0;

    while (n > 0) {
      int rem = n % 10;
      rev *= 10 + rem;
      n ~/= 10;
    }

    return orgN == rev;
  }

  int dec2radix(int n, int radix) {
    int result = 0;
    int place = 1;

    while (n > 0) {
      result += (n % radix) * place;
      n ~/= radix;
      place *= 10;
    }

    return result;
  }

  Iterable<int> generatePalindromes(int digits) sync* {
    if (digits == 1) {
      for (int i = 1; i <= 9; i++) yield i;
      return;
    }

    int half = (digits + 1) ~/ 2;
    int start = pow(10, half - 1).toInt();
    int end = pow(10, half).toInt();

    for (int prefix = start; prefix < end; prefix++) {
      String p = prefix.toString();
      String pal = (digits % 2 == 0) ? p + p.split('').reversed.join() : p + p.substring(0, p.length - 1).split('').reversed.join();
      yield int.parse(pal);
    }
  }

  int kMirror(int k, int n) {
    int sum = 0;
    int count = 0;

    // Generate palindromes by digit length
    bigFor:
    for (int len = 1; count < n; len++) {
      print("len: $len");
      for (int number in generatePalindromes(len)) {
        print("number: $number\n");

        if (isPal(dec2radix(number, k))) {
          sum += number;
          count++;
          if (count >= n) break bigFor;
        }
      }
    }
    return sum;
  }
}
