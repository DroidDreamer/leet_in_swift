//
//给定一个字符串，找出不含有重复字符的最长子串的长度。
//
//示例 1:输入: "abcabcbb"
//输出: 3
//解释: 无重复字符的最长子串是 "abc"，其长度为 3。


class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxValue = 0
        var dict:[Character : Int] = [:]
        var leftIndex = 0
        
        s.enumerated().forEach { (index, char) in
            if dict[char] != nil {
                if dict[char]! >= leftIndex {
                    leftIndex = dict[char]! + 1
                }
            }
            maxValue = max(maxValue, index - leftIndex + 1)
            dict[char] = index
        }
        return maxValue
    }
}
