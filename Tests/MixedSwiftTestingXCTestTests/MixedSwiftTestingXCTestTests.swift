import XCTest
import Testing

final class MixedSwiftTestingXCTestTests: XCTestCase {
    func testShouldntRecordFailure() {
        XCTExpectFailure("This should fail")
        XCTFail("This should fail")
    }
}

@Test func reportsAssertionFailuresToSwiftTesting() {
    withKnownIssue {
        Testing.Issue.record("This should fail")
    }
}
