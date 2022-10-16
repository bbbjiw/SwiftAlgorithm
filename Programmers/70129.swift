
// MARK: - 프로그래머스; 이진 변혼 반복하기

import Foundation

func solution(_ s:String) -> [Int] {
    
    var s = s
    var zeroCount = 0, times = 0
    // 1이 아닐 때
    while s != "1" {
        let replaceCount = s.filter { $0 == "0" }.count
        zeroCount += replaceCount

        s = String(s.count - replaceCount, radix: 2)
        times += 1
    }
    
    return [times, zeroCount]
}