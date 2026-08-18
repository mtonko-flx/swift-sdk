import Foundation

/// Predefined error codes.
///
/// Raw values are fixed by the OpenFeature specification and are compared as strings by
/// consumers, so they cannot be changed without breaking them.
public enum ErrorCode: String {
    case providerNotReady = "PROVIDER_NOT_READY"
    case flagNotFound = "FLAG_NOT_FOUND"
    case parseError = "PARSE_ERROR"
    case typeMismatch = "TYPE_MISMATCH"
    case targetingKeyMissing = "TARGETING_KEY_MISSING"
    case invalidContext = "INVALID_CONTEXT"
    case general = "GENERAL"
    case providerFatal = "PROVIDER_FATAL"
}
