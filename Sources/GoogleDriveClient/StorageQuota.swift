public struct StorageQuota: Sendable, Equatable, Codable {
  public init(
    limit: String,
    usage: String
  ) {
    self.limit = limit
    self.usage = usage
  }

  public var limit: String
  public var usage: String
}

extension StorageQuota {
  static let apiFields: String = [
    "limit",
    "usage",
  ].joined(separator: ",")
}
