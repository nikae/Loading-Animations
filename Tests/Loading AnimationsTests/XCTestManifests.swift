import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Loading_AnimationsTests.allTests),
    ]
}
#endif
