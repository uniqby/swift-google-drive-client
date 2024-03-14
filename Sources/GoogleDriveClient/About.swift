public struct About: Sendable, Equatable, Codable {
  public init(
    storageQuota: StorageQuota,
    appInstalled: Bool,
    maxUploadSize: String,
    user: User
  ) {
    self.storageQuota = storageQuota
    self.appInstalled = appInstalled
    self.maxUploadSize = maxUploadSize
    self.user = user
  }

  public var storageQuota: StorageQuota
  public var appInstalled: Bool
  public var maxUploadSize: String
  public var user: User
}

extension About {
  static let apiFields: String = [
    "storageQuota(" + StorageQuota.apiFields + ")",
    "appInstalled",
    "maxUploadSize",
    "user(" + User.apiFields + ")",
  ].joined(separator: ",")
}
