import XCTest
import Nimble
import Testing

final class MixedWithNimbleTests: XCTestCase {
    func testShouldntRecordFailure() {
        XCTExpectFailure("This should fail")
        fail("This should fail")
    }
}

@Test func nimbleCorrectlyReportsIssues() {
    withKnownIssue {
        fail("This should fail")
    }
}

