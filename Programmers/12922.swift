
// MARK: - 프로그래머스: 수박수박수박수박수박수?

func solution(_ n:Int) -> String {
    return (0..<n).map { ( $0 % 2 == 0 ? "수" : "박" )}.reduce("", +)
}