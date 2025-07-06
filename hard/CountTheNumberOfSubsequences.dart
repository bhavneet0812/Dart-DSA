// Given a string, count number of subsequences of the form a^i b^j c^k, i.e., it consists of i 'a' characters, followed by j 'b' characters, followed by k 'c' characters where i >= 1, j >= 1 and k >= 1.
// Note: Two subsequences are considered different if the set of array indexes picked for the 2 subsequences are different.

int countSubsequences(String s) {
  int aCount = 0, bCount = 0, cCount = 0;
  int mod = 1000000007;

  for (int i = 0; i < s.length; i++) {
    if (s[i] == 'a') {
      aCount = (2 * aCount + 1) % mod; // Each 'a' can either be included or not
    } else if (s[i] == 'b') {
      bCount =
          (2 * bCount + aCount) %
          mod; // Each 'b' can form subsequences with all previous 'a's
    } else if (s[i] == 'c') {
      cCount =
          (2 * cCount + bCount) %
          mod; // Each 'c' can form subsequences with all previous 'b's
    }
  }

  return cCount; // Return the count of valid subsequences of the form a^i b^j c^k
}

void main() {
  // Example usage
  // ignore: literal_only_boolean_expressions
  String s1 = "abcabc";
  print(countSubsequences(s1)); // Output: 7

  // ignore: literal_only_boolean_expressions
  String s2 = "aabbcc";
  print(countSubsequences(s2)); // Output: 27

  String s3 = "xyz";
  print(countSubsequences(s3)); // Output: 0 (no valid subsequences)
}
