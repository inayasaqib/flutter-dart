//question1 dart
import 'dart:io';

void main(){
   for (int num = 1; num <= 100; num++) {
   String number = "";
   if (num % 3 == 0) {
     number += "Fizz";
   }
   if (num % 5 == 0) {
    number += "Buzz";
   }
     if (number.isEmpty) {
    number = num.toString(); 
   }
   print(number);
 }

 //question2
 print("Enter a string:");
  String inputString = stdin.readLineSync()!;
  String reversedString = (inputString);
  print("Reversed string: $reversedString");

String reigh(String input) {
  return input.split('').reversed.join();
}

  //question3
 List<int> primeNumbers = [];
  for (int num = 2; num <= 100; num++) {
    bool isPrime = true;
    for (int i = 2; i * i <= num; i++) {
      if (num % i == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      primeNumbers.add(num);
    }
  }
  print("Prime numbers between 1 and 100: $primeNumbers");

  //question4
    String str1 = "ABCDABD";
  String str2 = "BCDBABD";
  String lcs = longestCommonSubstring(str1, str2);
  print("Longest common substring between '$str1' and '$str2': $lcs");
}
String longestCommonSubstring(String str1, String str2) {
  int m = str1.length;
  int n = str2.length;
  List<List<int>> dp = List.generate(m + 1, (_) => List.filled(n + 1, 0));
  int maxLen = 0;
  int endRow = 0;
  int endCol = 0;
  for (int i = 1; i <= m; i++) {
    for (int j = 1; j <= n; j++) {
      if (str1[i - 1] == str2[j - 1]) {
        dp[i][j] = dp[i - 1][j - 1] + 1;
        if (dp[i][j] > maxLen) {
          maxLen = dp[i][j];
          endRow = i;
          endCol = j;
        }
      }
    }
  }
  String lcs = "";
  for (int i = endRow - maxLen + 1; i < endRow; i++) {
    lcs += str1[i];
  }
  return lcs;
}