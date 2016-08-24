//Given a string, find the length of the longest substring without repeating characters.

//Examples:

//Given "abcabcbb", the answer is "abc", which the length is 3.

//Given "bbbbb", the answer is "b", with the length of 1.

//Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.


class Solution {
    func lengthOfLongestSubstring(s: String) -> Int {
        if s.isEmpty{
            return 0
        }
        var arr: [Int] = Array.init(count: 256, repeatedValue: -1)
        var maxlen: Int = 0
        var startIndex: Int = 0
        for (index,value) in s.characters.enumerate(){
            let asciiNumTemp = String(value).unicodeScalars.first?.value
            let asciiNum = Int(asciiNumTemp!)
            if arr[asciiNum] >= startIndex {
                startIndex = arr[asciiNum] + 1
                arr[asciiNum] = index
                
            }else{
                arr[asciiNum] = index
                var temp = index - startIndex + 1
                maxlen  = maxlen > temp ? maxlen : temp 
            }
        }
        return maxlen
 }
}