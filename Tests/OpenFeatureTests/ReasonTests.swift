import Foundation
import OpenFeature
import XCTest

final class ReasonTests: XCTestCase {
    func testReasonRawValuesMatchSpecification() {
        XCTAssertEqual(Reason.staticReason.rawValue, "STATIC")
        XCTAssertEqual(Reason.defaultReason.rawValue, "DEFAULT")
        XCTAssertEqual(Reason.targetingMatch.rawValue, "TARGETING_MATCH")
        XCTAssertEqual(Reason.split.rawValue, "SPLIT")
        XCTAssertEqual(Reason.cached.rawValue, "CACHED")
        XCTAssertEqual(Reason.disabled.rawValue, "DISABLED")
        XCTAssertEqual(Reason.unknown.rawValue, "UNKNOWN")
        XCTAssertEqual(Reason.stale.rawValue, "STALE")
        XCTAssertEqual(Reason.error.rawValue, "ERROR")
    }
}
