public struct User: Sendable, Equatable, Codable {
  public init(
    displayName: String,
    emailAddress: String,
    photoLink: String
  ) {
    self.displayName = displayName
    self.emailAddress = emailAddress
    self.photoLink = photoLink
  }
      
  public var displayName: String
  public var emailAddress: String
  public var photoLink: String
}

extension User {
  static let apiFields: String = [
    "displayName",
    "emailAddress",
    "photoLink",
  ].joined(separator: ",")
}
