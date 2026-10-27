import Testing
@testable import SwiftPractice

@Test func testLeet0017Idea1() {
    let idea = Leet0017Idea1()
    #expect(
        idea.letterCombinations("23").count == 9
    )
    #expect(
        Set(idea.letterCombinations("23")) == ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"]
    )
    #expect(
        idea.letterCombinations("2").count == 3
    )
    #expect(
        Set(idea.letterCombinations("2")) == ["a", "b", "c"]
    )
    #expect(
        idea.letterCombinations("37").count == 12
    )
    #expect(
        Set(idea.letterCombinations("37")) == ["dp", "ep", "fp", "dq", "eq", "fq", "dr", "er", "fr", "ds", "es", "fs"]
    )
    #expect(
        idea.letterCombinations("").count == 1
    )
    #expect(
        Set(idea.letterCombinations("")) == [""]
    )
}

@Test func testLeet0017Idea2() {
    let idea = Leet0017Idea2()
    #expect(
        idea.letterCombinations("23").count == 9
    )
    #expect(
        Set(idea.letterCombinations("23")) == ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"]
    )
    #expect(
        idea.letterCombinations("2").count == 3
    )
    #expect(
        Set(idea.letterCombinations("2")) == ["a", "b", "c"]
    )
    #expect(
        idea.letterCombinations("37").count == 12
    )
    #expect(
        Set(idea.letterCombinations("37")) == ["dp", "ep", "fp", "dq", "eq", "fq", "dr", "er", "fr", "ds", "es", "fs"]
    )
    #expect(
        idea.letterCombinations("").count == 1
    )
    #expect(
        Set(idea.letterCombinations("")) == [""]
    )
}

@Test func testLeet0017Idea3() {
    let idea = Leet0017Idea3()
    #expect(
        idea.letterCombinations("23").count == 9
    )
    #expect(
        Set(idea.letterCombinations("23")) == ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"]
    )
    #expect(
        idea.letterCombinations("2").count == 3
    )
    #expect(
        Set(idea.letterCombinations("2")) == ["a", "b", "c"]
    )
    #expect(
        idea.letterCombinations("37").count == 12
    )
    #expect(
        Set(idea.letterCombinations("37")) == ["dp", "ep", "fp", "dq", "eq", "fq", "dr", "er", "fr", "ds", "es", "fs"]
    )
    #expect(
        idea.letterCombinations("").count == 1
    )
    #expect(
        Set(idea.letterCombinations("")) == [""]
    )
}
