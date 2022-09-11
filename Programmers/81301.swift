
// 프로그래머스 - 숫자 문자열과 영단어

import Foundation

func solution(_ s:String) -> Int {
    
    let numArray = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    var str = s
    
    for idx in 0..<numArray.count {
        str = str.replacingOccurrences(of: numArray[idx], with: String(idx))
    }
    
    return Int(str)!
    
}

