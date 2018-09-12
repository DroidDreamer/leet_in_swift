
class Test {
    //    给出 n 代表生成括号的对数，请你写出一个函数，使其能够生成所有可能的并且有效的括号组合。
    //
    //    例如，给出 n = 3，生成结果为：
    //
    //    [
    //    "((()))",
    //    "(()())",
    //    "(())()",
    //    "()(())",
    //    "()()()"
    //    ]
    
    
    func generateParenthesis(_ n: Int) -> [String] {
        return generate(leftCount: 1, rightCount: 0, totalCount: n, result: ["("])
    }
    
    func generate(leftCount: Int, rightCount: Int, totalCount: Int, result:[String])-> [String] {
        if leftCount > rightCount {
            //添加左括号和右括号都可以
            if leftCount < totalCount {
                var leftList = generate(leftCount: leftCount + 1, rightCount: rightCount, totalCount: totalCount, result: result.map({$0 + "("}))
                var rightList = generate(leftCount: leftCount , rightCount: rightCount + 1, totalCount: totalCount, result: result.map({$0 + ")"}))
                return leftList + rightList
            }else {
                var resultList = result
                return generate(leftCount: leftCount, rightCount: rightCount + 1, totalCount: totalCount, result: resultList.map({$0 + ")"}))
            }
            
        }else {//leftCount == rightCount  不能在右侧添加“）”了
            //只能添加左括号
            if leftCount == totalCount {
                return result
            }else {
                var resultList = result
                return generate(leftCount: leftCount + 1, rightCount: rightCount, totalCount: totalCount, result: resultList.map({$0 + "("}))
                
            }
            
        }
    }
    
}
