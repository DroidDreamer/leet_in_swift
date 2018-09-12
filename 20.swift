
//20. 有效的括号

class Solution {
    func isValid(_ s: String) -> Bool {
        var list: [String] = []
        var result = true
        s.characters.forEach { (char) in
            switch char {
            case "[","{","(":
                list.append(String(char))
            case "]":
                guard list.count > 0 else {
                    result = false
                    return
                }
                if list.removeLast() != "[" {
                    result = false
                    return false
                }
            case "}":
                guard list.count > 0 else {
                    result = false
                    return
                }
                if list.removeLast() != "{" {
                    result = false
                    return
                }
            case ")":
                guard list.count > 0 else {
                    result = false
                    return
                }
                if list.removeLast() != "(" {
                    result = false
                    return
                }
            }
        }
        return list.count == 0
    }
}
