import Foundation

public enum Reason: String {
    /// The resolved value is static (no dynamic evaluation).
    case staticReason = "STATIC"
    /// The resolved value was configured statically, or otherwise fell back to a pre-configured value.
    case defaultReason = "DEFAULT"
    /// The resolved value was the result of a dynamic evaluation, such as a rule or specific user-targeting.
    case targetingMatch = "TARGETING_MATCH"
    /// The resolved value was the result of pseudorandom assignment.
    case split = "SPLIT"
    /// The resolved value was retrieved from cache.
    case cached = "CACHED"
    /// The resolved value was the result of the flag being disabled in the management system.
    case disabled = "DISABLED"
    /// The reason for the resolved value could not be determined.
    case unknown = "UNKNOWN"
    /// The resolved value is non-authoritative or possibly out of date.
    case stale = "STALE"
    /// The resolved value was the result of an error.
    case error = "ERROR"
}
