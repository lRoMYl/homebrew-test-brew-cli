// @generated
// Do not edit this generated file
// swiftlint:disable all

import Foundation

// MARK: - ApolloEnumModel

enum PatchSizeApolloEnumModel: RawRepresentable, Codable {
  typealias RawValue = String

  case small

  case large

  /// Auto generated constant for unknown enum values
  case _unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
    case "SMALL": self = .small
    case "LARGE": self = .large
    default: self = ._unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
    case .small: return "SMALL"
    case .large: return "LARGE"
    case let ._unknown(value): return value
    }
  }

  static func == (lhs: PatchSizeApolloEnumModel, rhs: PatchSizeApolloEnumModel) -> Bool {
    switch (lhs, rhs) {
    case (.small, .small): return true
    case (.large, .large): return true
    case let (._unknown(lhsValue), ._unknown(rhsValue)): return lhsValue == rhsValue
    default: return false
    }
  }
}

enum CacheControlScopeApolloEnumModel: RawRepresentable, Codable {
  typealias RawValue = String

  case `public`

  case `private`

  /// Auto generated constant for unknown enum values
  case _unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
    case "PUBLIC": self = .public
    case "PRIVATE": self = .private
    default: self = ._unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
    case .public: return "PUBLIC"
    case .private: return "PRIVATE"
    case let ._unknown(value): return value
    }
  }

  static func == (lhs: CacheControlScopeApolloEnumModel, rhs: CacheControlScopeApolloEnumModel) -> Bool {
    switch (lhs, rhs) {
    case (.public, .public): return true
    case (.private, .private): return true
    case let (._unknown(lhsValue), ._unknown(rhsValue)): return lhsValue == rhsValue
    default: return false
    }
  }
}

// MARK: - ApolloModel

struct QueryApolloModel: Codable {
  let launch: Optional<LaunchApolloModel?>
  let launches: Optional<LaunchConnectionApolloModel>
  let me: Optional<UserApolloModel?>
  let tripsBooked: Optional<Int?>

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case launch
    case launches
    case me
    case tripsBooked
  }
}

struct LaunchConnectionApolloModel: Codable {
  private let internalCursor: Optional<String>
  private let internalHasMore: Optional<Bool>
  private let internalLaunches: Optional<[LaunchApolloModel?]>

  func cursor() throws -> String {
    try value(for: \.internalCursor, codingKey: CodingKeys.internalCursor)
  }

  func hasMore() throws -> Bool {
    try value(for: \.internalHasMore, codingKey: CodingKeys.internalHasMore)
  }

  func launches() throws -> [LaunchApolloModel?] {
    try value(for: \.internalLaunches, codingKey: CodingKeys.internalLaunches)
  }

  private func value<Value>(for keyPath: KeyPath<LaunchConnectionApolloModel, Value?>, codingKey: CodingKey) throws -> Value {
    guard let value = self[keyPath: keyPath] else {
      throw GraphQLResponseError.missingSelection(key: codingKey, type: "LaunchConnection")
    }

    return value
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalCursor = "cursor"
    case internalHasMore = "hasMore"
    case internalLaunches = "launches"
  }
}

struct LaunchApolloModel: Codable {
  private let internalId: Optional<String>
  private let internalIsBooked: Optional<Bool>
  private let internalMission: Optional<MissionApolloModel?>
  private let internalRocket: Optional<RocketApolloModel?>
  private let internalSite: Optional<String?>

  func id() throws -> String {
    try value(for: \.internalId, codingKey: CodingKeys.internalId)
  }

  func isBooked() throws -> Bool {
    try value(for: \.internalIsBooked, codingKey: CodingKeys.internalIsBooked)
  }

  func mission() throws -> MissionApolloModel? {
    try value(for: \.internalMission, codingKey: CodingKeys.internalMission)
  }

  func rocket() throws -> RocketApolloModel? {
    try value(for: \.internalRocket, codingKey: CodingKeys.internalRocket)
  }

  func site() throws -> String? {
    try value(for: \.internalSite, codingKey: CodingKeys.internalSite)
  }

  private func value<Value>(for keyPath: KeyPath<LaunchApolloModel, Value?>, codingKey: CodingKey) throws -> Value {
    guard let value = self[keyPath: keyPath] else {
      throw GraphQLResponseError.missingSelection(key: codingKey, type: "Launch")
    }

    return value
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalId = "id"
    case internalIsBooked = "isBooked"
    case internalMission = "mission"
    case internalRocket = "rocket"
    case internalSite = "site"
  }
}

struct MissionApolloModel: Codable {
  private let internalMissionPatch: Optional<String?>
  private let internalName: Optional<String?>

  func missionPatch() throws -> String? {
    try value(for: \.internalMissionPatch, codingKey: CodingKeys.internalMissionPatch)
  }

  func name() throws -> String? {
    try value(for: \.internalName, codingKey: CodingKeys.internalName)
  }

  private func value<Value>(for keyPath: KeyPath<MissionApolloModel, Value?>, codingKey: CodingKey) throws -> Value {
    guard let value = self[keyPath: keyPath] else {
      throw GraphQLResponseError.missingSelection(key: codingKey, type: "Mission")
    }

    return value
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalMissionPatch = "missionPatch"
    case internalName = "name"
  }
}

struct RocketApolloModel: Codable {
  private let internalId: Optional<String>
  private let internalName: Optional<String?>
  private let internalType: Optional<String?>

  func id() throws -> String {
    try value(for: \.internalId, codingKey: CodingKeys.internalId)
  }

  func name() throws -> String? {
    try value(for: \.internalName, codingKey: CodingKeys.internalName)
  }

  func type() throws -> String? {
    try value(for: \.internalType, codingKey: CodingKeys.internalType)
  }

  private func value<Value>(for keyPath: KeyPath<RocketApolloModel, Value?>, codingKey: CodingKey) throws -> Value {
    guard let value = self[keyPath: keyPath] else {
      throw GraphQLResponseError.missingSelection(key: codingKey, type: "Rocket")
    }

    return value
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalId = "id"
    case internalName = "name"
    case internalType = "type"
  }
}

struct UserApolloModel: Codable {
  private let internalEmail: Optional<String>
  private let internalId: Optional<String>
  private let internalProfileImage: Optional<String?>
  private let internalTrips: Optional<[LaunchApolloModel?]>

  func email() throws -> String {
    try value(for: \.internalEmail, codingKey: CodingKeys.internalEmail)
  }

  func id() throws -> String {
    try value(for: \.internalId, codingKey: CodingKeys.internalId)
  }

  func profileImage() throws -> String? {
    try value(for: \.internalProfileImage, codingKey: CodingKeys.internalProfileImage)
  }

  func trips() throws -> [LaunchApolloModel?] {
    try value(for: \.internalTrips, codingKey: CodingKeys.internalTrips)
  }

  private func value<Value>(for keyPath: KeyPath<UserApolloModel, Value?>, codingKey: CodingKey) throws -> Value {
    guard let value = self[keyPath: keyPath] else {
      throw GraphQLResponseError.missingSelection(key: codingKey, type: "User")
    }

    return value
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalEmail = "email"
    case internalId = "id"
    case internalProfileImage = "profileImage"
    case internalTrips = "trips"
  }
}

struct MutationApolloModel: Codable {
  let bookTrips: Optional<TripUpdateResponseApolloModel>
  let cancelTrip: Optional<TripUpdateResponseApolloModel>
  let login: Optional<String?>
  let uploadProfileImage: Optional<UserApolloModel?>

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case bookTrips
    case cancelTrip
    case login
    case uploadProfileImage
  }
}

struct TripUpdateResponseApolloModel: Codable {
  private let internalLaunches: Optional<[LaunchApolloModel?]?>
  private let internalMessage: Optional<String?>
  private let internalSuccess: Optional<Bool>

  func launches() throws -> [LaunchApolloModel?]? {
    try value(for: \.internalLaunches, codingKey: CodingKeys.internalLaunches)
  }

  func message() throws -> String? {
    try value(for: \.internalMessage, codingKey: CodingKeys.internalMessage)
  }

  func success() throws -> Bool {
    try value(for: \.internalSuccess, codingKey: CodingKeys.internalSuccess)
  }

  private func value<Value>(for keyPath: KeyPath<TripUpdateResponseApolloModel, Value?>, codingKey: CodingKey) throws -> Value {
    guard let value = self[keyPath: keyPath] else {
      throw GraphQLResponseError.missingSelection(key: codingKey, type: "TripUpdateResponse")
    }

    return value
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalLaunches = "launches"
    case internalMessage = "message"
    case internalSuccess = "success"
  }
}

struct SubscriptionApolloModel: Codable {
  let tripsBooked: Optional<Int?>

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case tripsBooked
  }
}

// MARK: - GraphQLRequesting

/// LaunchApolloQuery
struct LaunchApolloQuery: GraphQLRequesting {
  // MARK: - GraphQLRequestType

  let requestType: GraphQLRequestType = .query
  let requestName: String = "launch"
  let rootSelectionKeys: Set<String> = ["launchLaunchFragment"]

  // MARK: - Arguments

  let id: String

  let launchMissionPatchSize: PatchSizeApolloEnumModel?

  private enum CodingKeys: String, CodingKey {
    case id = "launchId"

    case launchMissionPatchSize
  }

  init(
    id: String,
    launchMissionPatchSize: PatchSizeApolloEnumModel?
  ) {
    self.id = id
    self.launchMissionPatchSize = launchMissionPatchSize
  }

  // MARK: - Operation Definition

  func operationDefinition() -> String {
    return """
    launch(
      id: $launchId
    ) {
       ...launchLaunchFragment
    }
    """
  }

  func operationArguments() -> String {
    """
    $launchId: ID!,
    $launchMissionPatchSize: PatchSize
    """
  }

  func fragments(with selections: GraphQLSelections) -> String {
    selections.declaration(for: requestName, rootSelectionKeys: rootSelectionKeys)
  }
}

/// LaunchesApolloQuery
struct LaunchesApolloQuery: GraphQLRequesting {
  // MARK: - GraphQLRequestType

  let requestType: GraphQLRequestType = .query
  let requestName: String = "launches"
  let rootSelectionKeys: Set<String> = ["launchesLaunchConnectionFragment"]

  // MARK: - Arguments

  /// The number of results to show. Must be >= 1. Default = 20
  let pageSize: Int?
  /// If you add a cursor here, it will only return results _after_ this cursor
  let after: String?

  let launchesMissionPatchSize: PatchSizeApolloEnumModel?

  private enum CodingKeys: String, CodingKey {
    /// The number of results to show. Must be >= 1. Default = 20
    case pageSize = "launchesPageSize"
    /// If you add a cursor here, it will only return results _after_ this cursor
    case after = "launchesAfter"

    case launchesMissionPatchSize
  }

  init(
    after: String?,
    launchesMissionPatchSize: PatchSizeApolloEnumModel?,
    pageSize: Int?
  ) {
    self.after = after
    self.launchesMissionPatchSize = launchesMissionPatchSize
    self.pageSize = pageSize
  }

  // MARK: - Operation Definition

  func operationDefinition() -> String {
    return """
    launches(
      pageSize: $launchesPageSize
      after: $launchesAfter
    ) {
       ...launchesLaunchConnectionFragment
    }
    """
  }

  func operationArguments() -> String {
    """
    $launchesAfter: String,
    $launchesMissionPatchSize: PatchSize,
    $launchesPageSize: Int
    """
  }

  func fragments(with selections: GraphQLSelections) -> String {
    selections.declaration(for: requestName, rootSelectionKeys: rootSelectionKeys)
  }
}

/// MeApolloQuery
struct MeApolloQuery: GraphQLRequesting {
  // MARK: - GraphQLRequestType

  let requestType: GraphQLRequestType = .query
  let requestName: String = "me"
  let rootSelectionKeys: Set<String> = ["meUserFragment"]

  // MARK: - Arguments

  let meMissionPatchSize: PatchSizeApolloEnumModel?

  func encode(to _: Encoder) throws {}

  init(
    meMissionPatchSize: PatchSizeApolloEnumModel?
  ) {
    self.meMissionPatchSize = meMissionPatchSize
  }

  // MARK: - Operation Definition

  func operationDefinition() -> String {
    return """
    me {
       ...meUserFragment
    }
    """
  }

  func operationArguments() -> String {
    """
    $meMissionPatchSize: PatchSize
    """
  }

  func fragments(with selections: GraphQLSelections) -> String {
    selections.declaration(for: requestName, rootSelectionKeys: rootSelectionKeys)
  }
}

/// TripsBookedApolloQuery
struct TripsBookedApolloQuery: GraphQLRequesting {
  // MARK: - GraphQLRequestType

  let requestType: GraphQLRequestType = .query
  let requestName: String = "tripsBooked"
  let rootSelectionKeys: Set<String> = []

  func encode(to _: Encoder) throws {}

  init(
  ) {}

  // MARK: - Operation Definition

  func operationDefinition() -> String {
    return """
    tripsBooked
    """
  }

  func operationArguments() -> String {
    """
    """
  }

  func fragments(with selections: GraphQLSelections) -> String {
    selections.declaration(for: requestName, rootSelectionKeys: rootSelectionKeys)
  }
}

struct ApolloQuery: GraphQLRequesting {
  let requestType: GraphQLRequestType = .query
  let requestName: String = ""
  var rootSelectionKeys: Set<String> {
    return requests.reduce(into: Set<String>()) { result, request in
      request.rootSelectionKeys.forEach {
        result.insert($0)
      }
    }
  }

  let launch: LaunchApolloQuery?
  let launches: LaunchesApolloQuery?
  let me: MeApolloQuery?
  let tripsBooked: TripsBookedApolloQuery?

  private var requests: [GraphQLRequesting] {
    let requests: [GraphQLRequesting?] = [
      launch,
      launches,
      me,
      tripsBooked
    ]

    return requests.compactMap { $0 }
  }

  init(
    launch: LaunchApolloQuery? = nil,
    launches: LaunchesApolloQuery? = nil,
    me: MeApolloQuery? = nil,
    tripsBooked: TripsBookedApolloQuery? = nil
  ) {
    self.launch = launch
    self.launches = launches
    self.me = me
    self.tripsBooked = tripsBooked
  }

  func encode(to encoder: Encoder) throws {
    try requests.forEach {
      try $0.encode(to: encoder)
    }
  }

  func operationDefinition() -> String {
    requests
      .map { $0.operationDefinition() }
      .joined(separator: "\n")
  }

  func operationArguments() -> String {
    requests
      .map { $0.operationArguments() }
      .joined(separator: "\n")
  }

  func fragments(with selections: GraphQLSelections) -> String {
    requests.map {
      selections.declaration(for: $0.requestName, rootSelectionKeys: rootSelectionKeys)
    }.joined(separator: "\n")
  }
}

/// BookTripsApolloMutation
struct BookTripsApolloMutation: GraphQLRequesting {
  // MARK: - GraphQLRequestType

  let requestType: GraphQLRequestType = .mutation
  let requestName: String = "bookTrips"
  let rootSelectionKeys: Set<String> = ["bookTripsTripUpdateResponseFragment"]

  // MARK: - Arguments

  let launchIds: [String?]

  let bookTripsMissionPatchSize: PatchSizeApolloEnumModel?

  private enum CodingKeys: String, CodingKey {
    case launchIds = "bookTripsLaunchIds"

    case bookTripsMissionPatchSize
  }

  init(
    bookTripsMissionPatchSize: PatchSizeApolloEnumModel?,
    launchIds: [String?]
  ) {
    self.bookTripsMissionPatchSize = bookTripsMissionPatchSize
    self.launchIds = launchIds
  }

  // MARK: - Operation Definition

  func operationDefinition() -> String {
    return """
    bookTrips(
      launchIds: $bookTripsLaunchIds
    ) {
       ...bookTripsTripUpdateResponseFragment
    }
    """
  }

  func operationArguments() -> String {
    """
    $bookTripsLaunchIds: [ID]!,
    $bookTripsMissionPatchSize: PatchSize
    """
  }

  func fragments(with selections: GraphQLSelections) -> String {
    selections.declaration(for: requestName, rootSelectionKeys: rootSelectionKeys)
  }
}

/// CancelTripApolloMutation
struct CancelTripApolloMutation: GraphQLRequesting {
  // MARK: - GraphQLRequestType

  let requestType: GraphQLRequestType = .mutation
  let requestName: String = "cancelTrip"
  let rootSelectionKeys: Set<String> = ["cancelTripTripUpdateResponseFragment"]

  // MARK: - Arguments

  let launchId: String

  let cancelTripMissionPatchSize: PatchSizeApolloEnumModel?

  private enum CodingKeys: String, CodingKey {
    case launchId = "cancelTripLaunchId"

    case cancelTripMissionPatchSize
  }

  init(
    cancelTripMissionPatchSize: PatchSizeApolloEnumModel?,
    launchId: String
  ) {
    self.cancelTripMissionPatchSize = cancelTripMissionPatchSize
    self.launchId = launchId
  }

  // MARK: - Operation Definition

  func operationDefinition() -> String {
    return """
    cancelTrip(
      launchId: $cancelTripLaunchId
    ) {
       ...cancelTripTripUpdateResponseFragment
    }
    """
  }

  func operationArguments() -> String {
    """
    $cancelTripLaunchId: ID!,
    $cancelTripMissionPatchSize: PatchSize
    """
  }

  func fragments(with selections: GraphQLSelections) -> String {
    selections.declaration(for: requestName, rootSelectionKeys: rootSelectionKeys)
  }
}

/// LoginApolloMutation
struct LoginApolloMutation: GraphQLRequesting {
  // MARK: - GraphQLRequestType

  let requestType: GraphQLRequestType = .mutation
  let requestName: String = "login"
  let rootSelectionKeys: Set<String> = []

  // MARK: - Arguments

  let email: String?

  private enum CodingKeys: String, CodingKey {
    case email = "loginEmail"
  }

  init(
    email: String?
  ) {
    self.email = email
  }

  // MARK: - Operation Definition

  func operationDefinition() -> String {
    return """
    login(
      email: $loginEmail
    )
    """
  }

  func operationArguments() -> String {
    """
    $loginEmail: String
    """
  }

  func fragments(with selections: GraphQLSelections) -> String {
    selections.declaration(for: requestName, rootSelectionKeys: rootSelectionKeys)
  }
}

/// UploadProfileImageApolloMutation
struct UploadProfileImageApolloMutation: GraphQLRequesting {
  // MARK: - GraphQLRequestType

  let requestType: GraphQLRequestType = .mutation
  let requestName: String = "uploadProfileImage"
  let rootSelectionKeys: Set<String> = ["uploadProfileImageUserFragment"]

  // MARK: - Arguments

  let uploadProfileImageMissionPatchSize: PatchSizeApolloEnumModel?

  let file: String

  private enum CodingKeys: String, CodingKey {
    case uploadProfileImageMissionPatchSize

    case file = "uploadProfileImageFile"
  }

  init(
    file: String,
    uploadProfileImageMissionPatchSize: PatchSizeApolloEnumModel?
  ) {
    self.file = file
    self.uploadProfileImageMissionPatchSize = uploadProfileImageMissionPatchSize
  }

  // MARK: - Operation Definition

  func operationDefinition() -> String {
    return """
    uploadProfileImage(
      file: $uploadProfileImageFile
    ) {
       ...uploadProfileImageUserFragment
    }
    """
  }

  func operationArguments() -> String {
    """
    $uploadProfileImageFile: Upload!,
    $uploadProfileImageMissionPatchSize: PatchSize
    """
  }

  func fragments(with selections: GraphQLSelections) -> String {
    selections.declaration(for: requestName, rootSelectionKeys: rootSelectionKeys)
  }
}

struct ApolloMutation: GraphQLRequesting {
  let requestType: GraphQLRequestType = .mutation
  let requestName: String = ""
  var rootSelectionKeys: Set<String> {
    return requests.reduce(into: Set<String>()) { result, request in
      request.rootSelectionKeys.forEach {
        result.insert($0)
      }
    }
  }

  let bookTrips: BookTripsApolloMutation?
  let cancelTrip: CancelTripApolloMutation?
  let login: LoginApolloMutation?
  let uploadProfileImage: UploadProfileImageApolloMutation?

  private var requests: [GraphQLRequesting] {
    let requests: [GraphQLRequesting?] = [
      bookTrips,
      cancelTrip,
      login,
      uploadProfileImage
    ]

    return requests.compactMap { $0 }
  }

  init(
    bookTrips: BookTripsApolloMutation? = nil,
    cancelTrip: CancelTripApolloMutation? = nil,
    login: LoginApolloMutation? = nil,
    uploadProfileImage: UploadProfileImageApolloMutation? = nil
  ) {
    self.bookTrips = bookTrips
    self.cancelTrip = cancelTrip
    self.login = login
    self.uploadProfileImage = uploadProfileImage
  }

  func encode(to encoder: Encoder) throws {
    try requests.forEach {
      try $0.encode(to: encoder)
    }
  }

  func operationDefinition() -> String {
    requests
      .map { $0.operationDefinition() }
      .joined(separator: "\n")
  }

  func operationArguments() -> String {
    requests
      .map { $0.operationArguments() }
      .joined(separator: "\n")
  }

  func fragments(with selections: GraphQLSelections) -> String {
    requests.map {
      selections.declaration(for: $0.requestName, rootSelectionKeys: rootSelectionKeys)
    }.joined(separator: "\n")
  }
}

/// TripsBookedApolloSubscription
struct TripsBookedApolloSubscription: GraphQLRequesting {
  // MARK: - GraphQLRequestType

  let requestType: GraphQLRequestType = .subscription
  let requestName: String = "tripsBooked"
  let rootSelectionKeys: Set<String> = []

  func encode(to _: Encoder) throws {}

  init(
  ) {}

  // MARK: - Operation Definition

  func operationDefinition() -> String {
    return """
    tripsBooked
    """
  }

  func operationArguments() -> String {
    """
    """
  }

  func fragments(with selections: GraphQLSelections) -> String {
    selections.declaration(for: requestName, rootSelectionKeys: rootSelectionKeys)
  }
}

struct ApolloSubscription: GraphQLRequesting {
  let requestType: GraphQLRequestType = .subscription
  let requestName: String = ""
  var rootSelectionKeys: Set<String> {
    return requests.reduce(into: Set<String>()) { result, request in
      request.rootSelectionKeys.forEach {
        result.insert($0)
      }
    }
  }

  let tripsBooked: TripsBookedApolloSubscription?

  private var requests: [GraphQLRequesting] {
    let requests: [GraphQLRequesting?] = [
      tripsBooked
    ]

    return requests.compactMap { $0 }
  }

  init(
    tripsBooked: TripsBookedApolloSubscription? = nil
  ) {
    self.tripsBooked = tripsBooked
  }

  func encode(to encoder: Encoder) throws {
    try requests.forEach {
      try $0.encode(to: encoder)
    }
  }

  func operationDefinition() -> String {
    requests
      .map { $0.operationDefinition() }
      .joined(separator: "\n")
  }

  func operationArguments() -> String {
    requests
      .map { $0.operationArguments() }
      .joined(separator: "\n")
  }

  func fragments(with selections: GraphQLSelections) -> String {
    requests.map {
      selections.declaration(for: $0.requestName, rootSelectionKeys: rootSelectionKeys)
    }.joined(separator: "\n")
  }
}

struct LaunchQueryResponse: Codable {
  let launch: LaunchApolloModel?
}

struct LaunchesQueryResponse: Codable {
  let launches: LaunchConnectionApolloModel
}

struct MeQueryResponse: Codable {
  let me: UserApolloModel?
}

struct TripsBookedQueryResponse: Codable {
  let tripsBooked: Int?
}

struct BookTripsMutationResponse: Codable {
  let bookTrips: TripUpdateResponseApolloModel
}

struct CancelTripMutationResponse: Codable {
  let cancelTrip: TripUpdateResponseApolloModel
}

struct LoginMutationResponse: Codable {
  let login: String?
}

struct UploadProfileImageMutationResponse: Codable {
  let uploadProfileImage: UserApolloModel?
}

struct TripsBookedSubscriptionResponse: Codable {
  let tripsBooked: Int?
}

// MARK: - GraphQLSelection

enum LaunchConnectionSelection: String, GraphQLSelection {
  case cursor
  case hasMore
  case launches = """
  launches {
    ...%@LaunchFragment
  }
  """
}

enum LaunchSelection: String, GraphQLSelection {
  case id
  case isBooked
  case mission = """
  mission {
    ...%@MissionFragment
  }
  """
  case rocket = """
  rocket {
    ...%@RocketFragment
  }
  """
  case site
}

enum MissionSelection: String, GraphQLSelection {
  case missionPatch = """
  missionPatch(
    size: $%@MissionPatchSize
  )
  """
  case name
}

enum RocketSelection: String, GraphQLSelection {
  case id
  case name
  case type
}

enum UserSelection: String, GraphQLSelection {
  case email
  case id
  case profileImage
  case trips = """
  trips {
    ...%@LaunchFragment
  }
  """
}

enum TripUpdateResponseSelection: String, GraphQLSelection {
  case launches = """
  launches {
    ...%@LaunchFragment
  }
  """
  case message
  case success
}

struct ApolloQuerySelections: GraphQLSelections {
  let launch: Set<LaunchSelection>
  let launchConnection: Set<LaunchConnectionSelection>
  let mission: Set<MissionSelection>
  let rocket: Set<RocketSelection>
  let tripUpdateResponse: Set<TripUpdateResponseSelection>
  let user: Set<UserSelection>

  init(
    launch: Set<LaunchSelection> = .allFields,
    launchConnection: Set<LaunchConnectionSelection> = .allFields,
    mission: Set<MissionSelection> = .allFields,
    rocket: Set<RocketSelection> = .allFields,
    tripUpdateResponse: Set<TripUpdateResponseSelection> = .allFields,
    user: Set<UserSelection> = .allFields
  ) {
    self.launch = launch
    self.launchConnection = launchConnection
    self.mission = mission
    self.rocket = rocket
    self.tripUpdateResponse = tripUpdateResponse
    self.user = user
  }

  func declaration(for requestName: String, rootSelectionKeys: Set<String>) -> String {
    let launchConnectionDeclaration = """
    fragment \(requestName)LaunchConnectionFragment on LaunchConnection {
    	\(launchConnection.declaration(requestName: requestName))
    }
    """

    let launchDeclaration = """
    fragment \(requestName)LaunchFragment on Launch {
    	\(launch.declaration(requestName: requestName))
    }
    """

    let missionDeclaration = """
    fragment \(requestName)MissionFragment on Mission {
    	\(mission.declaration(requestName: requestName))
    }
    """

    let rocketDeclaration = """
    fragment \(requestName)RocketFragment on Rocket {
    	\(rocket.declaration(requestName: requestName))
    }
    """

    let userDeclaration = """
    fragment \(requestName)UserFragment on User {
    	\(user.declaration(requestName: requestName))
    }
    """

    let tripUpdateResponseDeclaration = """
    fragment \(requestName)TripUpdateResponseFragment on TripUpdateResponse {
    	\(tripUpdateResponse.declaration(requestName: requestName))
    }
    """

    let selectionDeclarationMap = [
      "\(requestName)LaunchConnectionFragment": launchConnectionDeclaration,
      "\(requestName)LaunchFragment": launchDeclaration,
      "\(requestName)MissionFragment": missionDeclaration,
      "\(requestName)RocketFragment": rocketDeclaration,
      "\(requestName)UserFragment": userDeclaration,
      "\(requestName)TripUpdateResponseFragment": tripUpdateResponseDeclaration
    ]

    let fragmentMaps = rootSelectionKeys
      .map {
        declaration(
          selectionDeclarationMap: selectionDeclarationMap,
          rootSelectionKey: $0
        )
      }
      .reduce([String: String]()) { old, new in
        old.merging(new, uniquingKeysWith: { _, new in new })
      }

    return fragmentMaps.values.joined(separator: "\n")
  }
}

// MARK: - Selections

struct LaunchesApolloQuerySelections: GraphQLSelections {
  let launchSelections: Set<LaunchSelection>
  let launchConnectionSelections: Set<LaunchConnectionSelection>
  let missionSelections: Set<MissionSelection>
  let rocketSelections: Set<RocketSelection>

  init(
    launchSelections: Set<LaunchSelection> = .allFields,
    launchConnectionSelections: Set<LaunchConnectionSelection> = .allFields,
    missionSelections: Set<MissionSelection> = .allFields,
    rocketSelections: Set<RocketSelection> = .allFields
  ) {
    self.launchSelections = launchSelections
    self.launchConnectionSelections = launchConnectionSelections
    self.missionSelections = missionSelections
    self.rocketSelections = rocketSelections
  }

  func declaration(for requestName: String, rootSelectionKeys: Set<String>) -> String {
    let launchSelectionsDeclaration = """
    fragment \(requestName)LaunchFragment on Launch {
    	\(launchSelections.declaration(requestName: requestName))
    }
    """

    let launchConnectionSelectionsDeclaration = """
    fragment \(requestName)LaunchConnectionFragment on LaunchConnection {
    	\(launchConnectionSelections.declaration(requestName: requestName))
    }
    """

    let missionSelectionsDeclaration = """
    fragment \(requestName)MissionFragment on Mission {
    	\(missionSelections.declaration(requestName: requestName))
    }
    """

    let rocketSelectionsDeclaration = """
    fragment \(requestName)RocketFragment on Rocket {
    	\(rocketSelections.declaration(requestName: requestName))
    }
    """

    let selectionDeclarationMap = [
      "\(requestName)LaunchFragment": launchSelectionsDeclaration,
      "\(requestName)LaunchConnectionFragment": launchConnectionSelectionsDeclaration,
      "\(requestName)MissionFragment": missionSelectionsDeclaration,
      "\(requestName)RocketFragment": rocketSelectionsDeclaration
    ]

    let fragmentMaps = rootSelectionKeys
      .map {
        declaration(
          selectionDeclarationMap: selectionDeclarationMap,
          rootSelectionKey: $0
        )
      }
      .reduce([String: String]()) { old, new in
        old.merging(new, uniquingKeysWith: { _, new in new })
      }

    return fragmentMaps.values.joined(separator: "\n")
  }
}

// MARK: - Selections

struct LaunchApolloQuerySelections: GraphQLSelections {
  let launchSelections: Set<LaunchSelection>
  let missionSelections: Set<MissionSelection>
  let rocketSelections: Set<RocketSelection>

  init(
    launchSelections: Set<LaunchSelection> = .allFields,
    missionSelections: Set<MissionSelection> = .allFields,
    rocketSelections: Set<RocketSelection> = .allFields
  ) {
    self.launchSelections = launchSelections
    self.missionSelections = missionSelections
    self.rocketSelections = rocketSelections
  }

  func declaration(for requestName: String, rootSelectionKeys: Set<String>) -> String {
    let launchSelectionsDeclaration = """
    fragment \(requestName)LaunchFragment on Launch {
    	\(launchSelections.declaration(requestName: requestName))
    }
    """

    let missionSelectionsDeclaration = """
    fragment \(requestName)MissionFragment on Mission {
    	\(missionSelections.declaration(requestName: requestName))
    }
    """

    let rocketSelectionsDeclaration = """
    fragment \(requestName)RocketFragment on Rocket {
    	\(rocketSelections.declaration(requestName: requestName))
    }
    """

    let selectionDeclarationMap = [
      "\(requestName)LaunchFragment": launchSelectionsDeclaration,
      "\(requestName)MissionFragment": missionSelectionsDeclaration,
      "\(requestName)RocketFragment": rocketSelectionsDeclaration
    ]

    let fragmentMaps = rootSelectionKeys
      .map {
        declaration(
          selectionDeclarationMap: selectionDeclarationMap,
          rootSelectionKey: $0
        )
      }
      .reduce([String: String]()) { old, new in
        old.merging(new, uniquingKeysWith: { _, new in new })
      }

    return fragmentMaps.values.joined(separator: "\n")
  }
}

// MARK: - Selections

struct MeApolloQuerySelections: GraphQLSelections {
  let launchSelections: Set<LaunchSelection>
  let missionSelections: Set<MissionSelection>
  let rocketSelections: Set<RocketSelection>
  let userSelections: Set<UserSelection>

  init(
    launchSelections: Set<LaunchSelection> = .allFields,
    missionSelections: Set<MissionSelection> = .allFields,
    rocketSelections: Set<RocketSelection> = .allFields,
    userSelections: Set<UserSelection> = .allFields
  ) {
    self.launchSelections = launchSelections
    self.missionSelections = missionSelections
    self.rocketSelections = rocketSelections
    self.userSelections = userSelections
  }

  func declaration(for requestName: String, rootSelectionKeys: Set<String>) -> String {
    let launchSelectionsDeclaration = """
    fragment \(requestName)LaunchFragment on Launch {
    	\(launchSelections.declaration(requestName: requestName))
    }
    """

    let missionSelectionsDeclaration = """
    fragment \(requestName)MissionFragment on Mission {
    	\(missionSelections.declaration(requestName: requestName))
    }
    """

    let rocketSelectionsDeclaration = """
    fragment \(requestName)RocketFragment on Rocket {
    	\(rocketSelections.declaration(requestName: requestName))
    }
    """

    let userSelectionsDeclaration = """
    fragment \(requestName)UserFragment on User {
    	\(userSelections.declaration(requestName: requestName))
    }
    """

    let selectionDeclarationMap = [
      "\(requestName)LaunchFragment": launchSelectionsDeclaration,
      "\(requestName)MissionFragment": missionSelectionsDeclaration,
      "\(requestName)RocketFragment": rocketSelectionsDeclaration,
      "\(requestName)UserFragment": userSelectionsDeclaration
    ]

    let fragmentMaps = rootSelectionKeys
      .map {
        declaration(
          selectionDeclarationMap: selectionDeclarationMap,
          rootSelectionKey: $0
        )
      }
      .reduce([String: String]()) { old, new in
        old.merging(new, uniquingKeysWith: { _, new in new })
      }

    return fragmentMaps.values.joined(separator: "\n")
  }
}

// MARK: - Selections

struct TripsBookedApolloQuerySelections: GraphQLSelections {
  func declaration(for _: String, rootSelectionKeys _: Set<String>) -> String {
    ""
  }
}

struct ApolloMutationSelections: GraphQLSelections {
  let launch: Set<LaunchSelection>
  let launchConnection: Set<LaunchConnectionSelection>
  let mission: Set<MissionSelection>
  let rocket: Set<RocketSelection>
  let tripUpdateResponse: Set<TripUpdateResponseSelection>
  let user: Set<UserSelection>

  init(
    launch: Set<LaunchSelection> = .allFields,
    launchConnection: Set<LaunchConnectionSelection> = .allFields,
    mission: Set<MissionSelection> = .allFields,
    rocket: Set<RocketSelection> = .allFields,
    tripUpdateResponse: Set<TripUpdateResponseSelection> = .allFields,
    user: Set<UserSelection> = .allFields
  ) {
    self.launch = launch
    self.launchConnection = launchConnection
    self.mission = mission
    self.rocket = rocket
    self.tripUpdateResponse = tripUpdateResponse
    self.user = user
  }

  func declaration(for requestName: String, rootSelectionKeys: Set<String>) -> String {
    let launchConnectionDeclaration = """
    fragment \(requestName)LaunchConnectionFragment on LaunchConnection {
    	\(launchConnection.declaration(requestName: requestName))
    }
    """

    let launchDeclaration = """
    fragment \(requestName)LaunchFragment on Launch {
    	\(launch.declaration(requestName: requestName))
    }
    """

    let missionDeclaration = """
    fragment \(requestName)MissionFragment on Mission {
    	\(mission.declaration(requestName: requestName))
    }
    """

    let rocketDeclaration = """
    fragment \(requestName)RocketFragment on Rocket {
    	\(rocket.declaration(requestName: requestName))
    }
    """

    let userDeclaration = """
    fragment \(requestName)UserFragment on User {
    	\(user.declaration(requestName: requestName))
    }
    """

    let tripUpdateResponseDeclaration = """
    fragment \(requestName)TripUpdateResponseFragment on TripUpdateResponse {
    	\(tripUpdateResponse.declaration(requestName: requestName))
    }
    """

    let selectionDeclarationMap = [
      "\(requestName)LaunchConnectionFragment": launchConnectionDeclaration,
      "\(requestName)LaunchFragment": launchDeclaration,
      "\(requestName)MissionFragment": missionDeclaration,
      "\(requestName)RocketFragment": rocketDeclaration,
      "\(requestName)UserFragment": userDeclaration,
      "\(requestName)TripUpdateResponseFragment": tripUpdateResponseDeclaration
    ]

    let fragmentMaps = rootSelectionKeys
      .map {
        declaration(
          selectionDeclarationMap: selectionDeclarationMap,
          rootSelectionKey: $0
        )
      }
      .reduce([String: String]()) { old, new in
        old.merging(new, uniquingKeysWith: { _, new in new })
      }

    return fragmentMaps.values.joined(separator: "\n")
  }
}

// MARK: - Selections

struct BookTripsApolloMutationSelections: GraphQLSelections {
  let launchSelections: Set<LaunchSelection>
  let missionSelections: Set<MissionSelection>
  let rocketSelections: Set<RocketSelection>
  let tripUpdateResponseSelections: Set<TripUpdateResponseSelection>

  init(
    launchSelections: Set<LaunchSelection> = .allFields,
    missionSelections: Set<MissionSelection> = .allFields,
    rocketSelections: Set<RocketSelection> = .allFields,
    tripUpdateResponseSelections: Set<TripUpdateResponseSelection> = .allFields
  ) {
    self.launchSelections = launchSelections
    self.missionSelections = missionSelections
    self.rocketSelections = rocketSelections
    self.tripUpdateResponseSelections = tripUpdateResponseSelections
  }

  func declaration(for requestName: String, rootSelectionKeys: Set<String>) -> String {
    let launchSelectionsDeclaration = """
    fragment \(requestName)LaunchFragment on Launch {
    	\(launchSelections.declaration(requestName: requestName))
    }
    """

    let missionSelectionsDeclaration = """
    fragment \(requestName)MissionFragment on Mission {
    	\(missionSelections.declaration(requestName: requestName))
    }
    """

    let rocketSelectionsDeclaration = """
    fragment \(requestName)RocketFragment on Rocket {
    	\(rocketSelections.declaration(requestName: requestName))
    }
    """

    let tripUpdateResponseSelectionsDeclaration = """
    fragment \(requestName)TripUpdateResponseFragment on TripUpdateResponse {
    	\(tripUpdateResponseSelections.declaration(requestName: requestName))
    }
    """

    let selectionDeclarationMap = [
      "\(requestName)LaunchFragment": launchSelectionsDeclaration,
      "\(requestName)MissionFragment": missionSelectionsDeclaration,
      "\(requestName)RocketFragment": rocketSelectionsDeclaration,
      "\(requestName)TripUpdateResponseFragment": tripUpdateResponseSelectionsDeclaration
    ]

    let fragmentMaps = rootSelectionKeys
      .map {
        declaration(
          selectionDeclarationMap: selectionDeclarationMap,
          rootSelectionKey: $0
        )
      }
      .reduce([String: String]()) { old, new in
        old.merging(new, uniquingKeysWith: { _, new in new })
      }

    return fragmentMaps.values.joined(separator: "\n")
  }
}

// MARK: - Selections

struct CancelTripApolloMutationSelections: GraphQLSelections {
  let launchSelections: Set<LaunchSelection>
  let missionSelections: Set<MissionSelection>
  let rocketSelections: Set<RocketSelection>
  let tripUpdateResponseSelections: Set<TripUpdateResponseSelection>

  init(
    launchSelections: Set<LaunchSelection> = .allFields,
    missionSelections: Set<MissionSelection> = .allFields,
    rocketSelections: Set<RocketSelection> = .allFields,
    tripUpdateResponseSelections: Set<TripUpdateResponseSelection> = .allFields
  ) {
    self.launchSelections = launchSelections
    self.missionSelections = missionSelections
    self.rocketSelections = rocketSelections
    self.tripUpdateResponseSelections = tripUpdateResponseSelections
  }

  func declaration(for requestName: String, rootSelectionKeys: Set<String>) -> String {
    let launchSelectionsDeclaration = """
    fragment \(requestName)LaunchFragment on Launch {
    	\(launchSelections.declaration(requestName: requestName))
    }
    """

    let missionSelectionsDeclaration = """
    fragment \(requestName)MissionFragment on Mission {
    	\(missionSelections.declaration(requestName: requestName))
    }
    """

    let rocketSelectionsDeclaration = """
    fragment \(requestName)RocketFragment on Rocket {
    	\(rocketSelections.declaration(requestName: requestName))
    }
    """

    let tripUpdateResponseSelectionsDeclaration = """
    fragment \(requestName)TripUpdateResponseFragment on TripUpdateResponse {
    	\(tripUpdateResponseSelections.declaration(requestName: requestName))
    }
    """

    let selectionDeclarationMap = [
      "\(requestName)LaunchFragment": launchSelectionsDeclaration,
      "\(requestName)MissionFragment": missionSelectionsDeclaration,
      "\(requestName)RocketFragment": rocketSelectionsDeclaration,
      "\(requestName)TripUpdateResponseFragment": tripUpdateResponseSelectionsDeclaration
    ]

    let fragmentMaps = rootSelectionKeys
      .map {
        declaration(
          selectionDeclarationMap: selectionDeclarationMap,
          rootSelectionKey: $0
        )
      }
      .reduce([String: String]()) { old, new in
        old.merging(new, uniquingKeysWith: { _, new in new })
      }

    return fragmentMaps.values.joined(separator: "\n")
  }
}

// MARK: - Selections

struct LoginApolloMutationSelections: GraphQLSelections {
  func declaration(for _: String, rootSelectionKeys _: Set<String>) -> String {
    ""
  }
}

// MARK: - Selections

struct UploadProfileImageApolloMutationSelections: GraphQLSelections {
  let launchSelections: Set<LaunchSelection>
  let missionSelections: Set<MissionSelection>
  let rocketSelections: Set<RocketSelection>
  let userSelections: Set<UserSelection>

  init(
    launchSelections: Set<LaunchSelection> = .allFields,
    missionSelections: Set<MissionSelection> = .allFields,
    rocketSelections: Set<RocketSelection> = .allFields,
    userSelections: Set<UserSelection> = .allFields
  ) {
    self.launchSelections = launchSelections
    self.missionSelections = missionSelections
    self.rocketSelections = rocketSelections
    self.userSelections = userSelections
  }

  func declaration(for requestName: String, rootSelectionKeys: Set<String>) -> String {
    let launchSelectionsDeclaration = """
    fragment \(requestName)LaunchFragment on Launch {
    	\(launchSelections.declaration(requestName: requestName))
    }
    """

    let missionSelectionsDeclaration = """
    fragment \(requestName)MissionFragment on Mission {
    	\(missionSelections.declaration(requestName: requestName))
    }
    """

    let rocketSelectionsDeclaration = """
    fragment \(requestName)RocketFragment on Rocket {
    	\(rocketSelections.declaration(requestName: requestName))
    }
    """

    let userSelectionsDeclaration = """
    fragment \(requestName)UserFragment on User {
    	\(userSelections.declaration(requestName: requestName))
    }
    """

    let selectionDeclarationMap = [
      "\(requestName)LaunchFragment": launchSelectionsDeclaration,
      "\(requestName)MissionFragment": missionSelectionsDeclaration,
      "\(requestName)RocketFragment": rocketSelectionsDeclaration,
      "\(requestName)UserFragment": userSelectionsDeclaration
    ]

    let fragmentMaps = rootSelectionKeys
      .map {
        declaration(
          selectionDeclarationMap: selectionDeclarationMap,
          rootSelectionKey: $0
        )
      }
      .reduce([String: String]()) { old, new in
        old.merging(new, uniquingKeysWith: { _, new in new })
      }

    return fragmentMaps.values.joined(separator: "\n")
  }
}

struct ApolloSubscriptionSelections: GraphQLSelections {
  let launch: Set<LaunchSelection>
  let launchConnection: Set<LaunchConnectionSelection>
  let mission: Set<MissionSelection>
  let rocket: Set<RocketSelection>
  let tripUpdateResponse: Set<TripUpdateResponseSelection>
  let user: Set<UserSelection>

  init(
    launch: Set<LaunchSelection> = .allFields,
    launchConnection: Set<LaunchConnectionSelection> = .allFields,
    mission: Set<MissionSelection> = .allFields,
    rocket: Set<RocketSelection> = .allFields,
    tripUpdateResponse: Set<TripUpdateResponseSelection> = .allFields,
    user: Set<UserSelection> = .allFields
  ) {
    self.launch = launch
    self.launchConnection = launchConnection
    self.mission = mission
    self.rocket = rocket
    self.tripUpdateResponse = tripUpdateResponse
    self.user = user
  }

  func declaration(for requestName: String, rootSelectionKeys: Set<String>) -> String {
    let launchConnectionDeclaration = """
    fragment \(requestName)LaunchConnectionFragment on LaunchConnection {
    	\(launchConnection.declaration(requestName: requestName))
    }
    """

    let launchDeclaration = """
    fragment \(requestName)LaunchFragment on Launch {
    	\(launch.declaration(requestName: requestName))
    }
    """

    let missionDeclaration = """
    fragment \(requestName)MissionFragment on Mission {
    	\(mission.declaration(requestName: requestName))
    }
    """

    let rocketDeclaration = """
    fragment \(requestName)RocketFragment on Rocket {
    	\(rocket.declaration(requestName: requestName))
    }
    """

    let userDeclaration = """
    fragment \(requestName)UserFragment on User {
    	\(user.declaration(requestName: requestName))
    }
    """

    let tripUpdateResponseDeclaration = """
    fragment \(requestName)TripUpdateResponseFragment on TripUpdateResponse {
    	\(tripUpdateResponse.declaration(requestName: requestName))
    }
    """

    let selectionDeclarationMap = [
      "\(requestName)LaunchConnectionFragment": launchConnectionDeclaration,
      "\(requestName)LaunchFragment": launchDeclaration,
      "\(requestName)MissionFragment": missionDeclaration,
      "\(requestName)RocketFragment": rocketDeclaration,
      "\(requestName)UserFragment": userDeclaration,
      "\(requestName)TripUpdateResponseFragment": tripUpdateResponseDeclaration
    ]

    let fragmentMaps = rootSelectionKeys
      .map {
        declaration(
          selectionDeclarationMap: selectionDeclarationMap,
          rootSelectionKey: $0
        )
      }
      .reduce([String: String]()) { old, new in
        old.merging(new, uniquingKeysWith: { _, new in new })
      }

    return fragmentMaps.values.joined(separator: "\n")
  }
}

// MARK: - Selections

struct TripsBookedApolloSubscriptionSelections: GraphQLSelections {
  func declaration(for _: String, rootSelectionKeys _: Set<String>) -> String {
    ""
  }
}
