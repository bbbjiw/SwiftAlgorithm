
// MARK: 프로그래머스 - 신규 아이디 추천

import Foundation

func solution(_ new_id:String) -> String {
    var converted_id = new_id.lowercased()
    converted_id = converted_id.filter { $0.isLetter || $0.isNumber || $0 == "-" || $0 == "_" || $0 == "." }
    while converted_id.contains("..") {
        converted_id = converted_id.replacingOccurrences(of: "..", with: ".")
    }
    if converted_id.first == "." { converted_id.removeFirst() }
    if converted_id.last == "." { converted_id.removeLast() }
    if converted_id.isEmpty { converted_id = "a" }
    if converted_id.count >= 16 {
        converted_id = String(converted_id.prefix(15))
    }
    if converted_id.last == "." { converted_id.removeLast() }
    while converted_id.count < 3 {
        converted_id += String(converted_id.last!)
    }

    return converted_id
}