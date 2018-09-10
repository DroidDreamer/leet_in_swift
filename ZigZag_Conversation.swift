//将字符串 "PAYPALISHIRING" 以Z字形排列成给定的行数：

//P   A   H   N
//A P L S I I G
//Y   I   R
//之后从左往右，逐行读取字符："PAHNAPLSIIGYIR"
//
//
//
class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }
        let cycleCount: Int = (numRows - 1) * 2
        var list: [[Character]] = []
        s.enumerated().forEach { (index, value) in
            if index < numRows {
                list.append([value])
            }else {
                var tempIndex = index % cycleCount
                if tempIndex < numRows {
                    list[tempIndex].append(value)
                }else {
                    tempIndex = cycleCount - tempIndex
                    list[tempIndex].append(value)
                }
            }
        }
        var totolList = list.flatMap{String($0)}
        return String.init(totolList)
    }
}
