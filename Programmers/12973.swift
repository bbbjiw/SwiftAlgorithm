
// MARK: - 프로그래머스: 짝지어 제거하기

import Foundation

func solution(_ s:String) -> Int{
    var result: [Character] = []
    var answer: Int = -1
    
    if s.count % 2 != 0 { return 0 }
    
    for c in s {
        if !result.isEmpty && c == result[result.count-1] {
            result.removeLast()
        } else {
            result.append(c)
        }
    }
    answer =  result.count == 0 ? 1 : 0

    return answer
}