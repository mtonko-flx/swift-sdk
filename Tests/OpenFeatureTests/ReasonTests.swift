import Foundation
import OpenFeature
import XCTest

/// Asserts the literal raw values, because assertions elsewhere compare `details.reason` against
/// `Reason.x.rawValue` and so pass for any value.
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

    func testErrorCodeRawValuesMatchSpecification() {
        XCTAssertEqual(ErrorCode.providerNotReady.rawValue, "PROVIDER_NOT_READY")
        XCTAssertEqual(ErrorCode.flagNotFound.rawValue, "FLAG_NOT_FOUND")
        XCTAssertEqual(ErrorCode.parseError.rawValue, "PARSE_ERROR")
        XCTAssertEqual(ErrorCode.typeMismatch.rawValue, "TYPE_MISMATCH")
        XCTAssertEqual(ErrorCode.targetingKeyMissing.rawValue, "TARGETING_KEY_MISSING")
        XCTAssertEqual(ErrorCode.invalidContext.rawValue, "INVALID_CONTEXT")
        XCTAssertEqual(ErrorCode.general.rawValue, "GENERAL")
        XCTAssertEqual(ErrorCode.providerFatal.rawValue, "PROVIDER_FATAL")
    }
}
