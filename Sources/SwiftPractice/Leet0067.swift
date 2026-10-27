/*
67. Add Binary

Given two binary strings a and b, return their sum as a binary string.

Constraints:
    1 <= a.length, b.length <= 10**4
    a and b consist only of '0' or '1' characters.
    Each string does not contain leading zeros except for the zero itself.
*/

struct Leet0067Idea1 {
    func addBinary(
        _ stringA: String,
        _ stringB: String
    ) -> String {
        var resultCharacters: [Character] = []
        var hasCarry = false
        let charactersA = Array(stringA.reversed())
        let charactersB = Array(stringB.reversed())
        let lengthA = charactersA.count
        let lengthB = charactersB.count
        for i in 0 ..< max(lengthA, lengthB) {
            let characterA = i < lengthA ? charactersA[i] : "0"
            let characterB = i < lengthB ? charactersB[i] : "0"
            if characterA == "0" && characterB == "0" {
                if hasCarry {
                    resultCharacters.append("1")
                    hasCarry = false
                }
                else {
                    resultCharacters.append("0")
                    hasCarry = false
                }
            }
            else if characterA == "1" && characterB == "1" {
                if hasCarry {
                    resultCharacters.append("1")
                    hasCarry = true
                }
                else {
                    resultCharacters.append("0")
                    hasCarry = true
                }
            }
            else {
                if hasCarry {
                    resultCharacters.append("0")
                    hasCarry = true
                }
                else {
                    resultCharacters.append("1")
                    hasCarry = false
                }
            }
        }
        if hasCarry {
            resultCharacters.append("1")
        }
        return resultCharacters.reversed().map { String($0) }.joined()
    }
}
