
// MARK: - 프로그래머스 : 예상 대진표

import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var answer = 0
    var a = a, b = b

    while a != b {
        a = a / 2 + a % 2
        b = b / 2 + b % 2
        answer += 1
    }

    return answer
}