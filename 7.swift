//7. 反转整数
//
//给定一个 32 位有符号整数，将整数中的数字进行反转。
//
//示例 1:
//
//输入: 123
//输出: 321
//示例 2:
//
//输入: -123
//输出: -321
//示例 3:
//
//输入: 120
//输出: 21
class Solution {
    func reverse(_ x: Int) -> Int {
        
        var value = x
        var result = 0
        while value != 0 {
            result = result * 10 + value % 10
            value = value / 10
            
            if result > Int32.max || result < Int32.min {
                result = 0
                return result
            }
        }
        return result}
