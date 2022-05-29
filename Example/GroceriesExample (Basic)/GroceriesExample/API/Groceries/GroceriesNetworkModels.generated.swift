// @generated
// Do not edit this generated file
// swiftlint:disable all
// swiftformat:disable all

import Foundation
// MARK: - EnumResponseModel

enum CampaignTypeEnumResponseModel: RawRepresentable, Codable {
  typealias RawValue = String

  case strikethrough

  case sameItemBundle

  case mixAndMatchSame

  case mixAndMatchDifferent

  case itemBasedDelivery

  /// Auto generated constant for unknown enum values
  case _unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
    case "Strikethrough": self = .strikethrough
    case "SameItemBundle": self = .sameItemBundle
    case "MixAndMatchSame": self = .mixAndMatchSame
    case "MixAndMatchDifferent": self = .mixAndMatchDifferent
    case "ItemBasedDelivery": self = .itemBasedDelivery
    default: self = ._unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
    case .strikethrough: return "Strikethrough"
    case .sameItemBundle: return "SameItemBundle"
    case .mixAndMatchSame: return "MixAndMatchSame"
    case .mixAndMatchDifferent: return "MixAndMatchDifferent"
    case .itemBasedDelivery: return "ItemBasedDelivery"
    case let ._unknown(value): return value
    }
  }

  static func == (lhs: CampaignTypeEnumResponseModel, rhs: CampaignTypeEnumResponseModel) -> Bool {
    switch (lhs, rhs) {
    case (.strikethrough, .strikethrough): return true
    case (.sameItemBundle, .sameItemBundle): return true
    case (.mixAndMatchSame, .mixAndMatchSame): return true
    case (.mixAndMatchDifferent, .mixAndMatchDifferent): return true
    case (.itemBasedDelivery, .itemBasedDelivery): return true
    case let (._unknown(lhsValue), ._unknown(rhsValue)): return lhsValue == rhsValue
    default: return false
    }
  }
}

enum PastOrderStrategyEnumResponseModel: RawRepresentable, Codable {
  typealias RawValue = String

  case recency

  case frequency

  /// Auto generated constant for unknown enum values
  case _unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
    case "Recency": self = .recency
    case "Frequency": self = .frequency
    default: self = ._unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
    case .recency: return "Recency"
    case .frequency: return "Frequency"
    case let ._unknown(value): return value
    }
  }

  static func == (lhs: PastOrderStrategyEnumResponseModel, rhs: PastOrderStrategyEnumResponseModel) -> Bool {
    switch (lhs, rhs) {
    case (.recency, .recency): return true
    case (.frequency, .frequency): return true
    case let (._unknown(lhsValue), ._unknown(rhsValue)): return lhsValue == rhsValue
    default: return false
    }
  }
}

enum ProductFilterTypeEnumResponseModel: RawRepresentable, Codable {
  typealias RawValue = String

  case banner

  case campaign

  case category

  case swimlane

  case pastOrder

  /// Auto generated constant for unknown enum values
  case _unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
    case "Banner": self = .banner
    case "Campaign": self = .campaign
    case "Category": self = .category
    case "Swimlane": self = .swimlane
    case "PastOrder": self = .pastOrder
    default: self = ._unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
    case .banner: return "Banner"
    case .campaign: return "Campaign"
    case .category: return "Category"
    case .swimlane: return "Swimlane"
    case .pastOrder: return "PastOrder"
    case let ._unknown(value): return value
    }
  }

  static func == (lhs: ProductFilterTypeEnumResponseModel, rhs: ProductFilterTypeEnumResponseModel) -> Bool {
    switch (lhs, rhs) {
    case (.banner, .banner): return true
    case (.campaign, .campaign): return true
    case (.category, .category): return true
    case (.swimlane, .swimlane): return true
    case (.pastOrder, .pastOrder): return true
    case let (._unknown(lhsValue), ._unknown(rhsValue)): return lhsValue == rhsValue
    default: return false
    }
  }
}

enum DiscountTypeEnumResponseModel: RawRepresentable, Codable {
  typealias RawValue = String

  case free

  case absolute

  case percentage

  /// Auto generated constant for unknown enum values
  case _unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
    case "FREE": self = .free
    case "ABSOLUTE": self = .absolute
    case "PERCENTAGE": self = .percentage
    default: self = ._unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
    case .free: return "FREE"
    case .absolute: return "ABSOLUTE"
    case .percentage: return "PERCENTAGE"
    case let ._unknown(value): return value
    }
  }

  static func == (lhs: DiscountTypeEnumResponseModel, rhs: DiscountTypeEnumResponseModel) -> Bool {
    switch (lhs, rhs) {
    case (.free, .free): return true
    case (.absolute, .absolute): return true
    case (.percentage, .percentage): return true
    case let (._unknown(lhsValue), ._unknown(rhsValue)): return lhsValue == rhsValue
    default: return false
    }
  }
}

enum ShopItemTypeEnumResponseModel: RawRepresentable, Codable {
  typealias RawValue = String

  case banner

  case product

  case category

  /// Auto generated constant for unknown enum values
  case _unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
    case "Banner": self = .banner
    case "Product": self = .product
    case "Category": self = .category
    default: self = ._unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
    case .banner: return "Banner"
    case .product: return "Product"
    case .category: return "Category"
    case let ._unknown(value): return value
    }
  }

  static func == (lhs: ShopItemTypeEnumResponseModel, rhs: ShopItemTypeEnumResponseModel) -> Bool {
    switch (lhs, rhs) {
    case (.banner, .banner): return true
    case (.product, .product): return true
    case (.category, .category): return true
    case let (._unknown(lhsValue), ._unknown(rhsValue)): return lhsValue == rhsValue
    default: return false
    }
  }
}

enum CampaignSourceEnumResponseModel: RawRepresentable, Codable {
  typealias RawValue = String

  case djini

  /// Auto generated constant for unknown enum values
  case _unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
    case "DJINI": self = .djini
    default: self = ._unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
    case .djini: return "DJINI"
    case let ._unknown(value): return value
    }
  }

  static func == (lhs: CampaignSourceEnumResponseModel, rhs: CampaignSourceEnumResponseModel) -> Bool {
    switch (lhs, rhs) {
    case (.djini, .djini): return true
    case let (._unknown(lhsValue), ._unknown(rhsValue)): return lhsValue == rhsValue
    default: return false
    }
  }
}

enum ProductIdentifierTypeEnumResponseModel: RawRepresentable, Codable {
  typealias RawValue = String

  case sku

  case id

  /// Auto generated constant for unknown enum values
  case _unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
    case "SKU": self = .sku
    case "ID": self = .id
    default: self = ._unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
    case .sku: return "SKU"
    case .id: return "ID"
    case let ._unknown(value): return value
    }
  }

  static func == (lhs: ProductIdentifierTypeEnumResponseModel, rhs: ProductIdentifierTypeEnumResponseModel) -> Bool {
    switch (lhs, rhs) {
    case (.sku, .sku): return true
    case (.id, .id): return true
    case let (._unknown(lhsValue), ._unknown(rhsValue)): return lhsValue == rhsValue
    default: return false
    }
  }
}

enum OpeningTypeEnumResponseModel: RawRepresentable, Codable {
  typealias RawValue = String

  case delivery

  case pickup

  /// Auto generated constant for unknown enum values
  case _unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
    case "delivery": self = .delivery
    case "pickup": self = .pickup
    default: self = ._unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
    case .delivery: return "delivery"
    case .pickup: return "pickup"
    case let ._unknown(value): return value
    }
  }

  static func == (lhs: OpeningTypeEnumResponseModel, rhs: OpeningTypeEnumResponseModel) -> Bool {
    switch (lhs, rhs) {
    case (.delivery, .delivery): return true
    case (.pickup, .pickup): return true
    case let (._unknown(lhsValue), ._unknown(rhsValue)): return lhsValue == rhsValue
    default: return false
    }
  }
}

// MARK: - ResponseModel

struct BenefitResponseModel: Codable {
  private let internalProductId: Optional<String>
  private let internalQuantity: Optional<Int>

  func productId() throws -> String {
    try value(for: \Self.internalProductId, codingKey: CodingKeys.internalProductId)
  }

  func quantity() throws -> Int {
    try value(for: \Self.internalQuantity, codingKey: CodingKeys.internalQuantity)
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    internalProductId = try container.decodeOptionalIfPresent(String.self, forKey: .internalProductId)
    internalQuantity = try container.decodeOptionalIfPresent(Int.self, forKey: .internalQuantity)
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalProductId = "productID"
    case internalQuantity = "quantity"
  }
}

struct CampaignAttributeResponseModel: Codable {
  private let internalAutoApplied: Optional<Bool>
  private let internalBenefits: Optional<[BenefitResponseModel]?>
  private let internalCampaignEndTime: Optional<String>
  private let internalCampaignType: Optional<CampaignTypeEnumResponseModel>
  private let internalDescription: Optional<String>
  private let internalDiscountType: Optional<DiscountTypeEnumResponseModel?>
  private let internalDiscountValue: Optional<Double?>
  private let internalId: Optional<String>
  private let internalName: Optional<String>
  private let internalRedemptionLimit: Optional<Double>
  private let internalSource: Optional<CampaignSourceEnumResponseModel>

  func autoApplied() throws -> Bool {
    try value(for: \Self.internalAutoApplied, codingKey: CodingKeys.internalAutoApplied)
  }

  func benefits() throws -> [BenefitResponseModel]? {
    try value(for: \Self.internalBenefits, codingKey: CodingKeys.internalBenefits)
  }

  func campaignEndTime() throws -> String {
    try value(for: \Self.internalCampaignEndTime, codingKey: CodingKeys.internalCampaignEndTime)
  }

  func campaignType() throws -> CampaignTypeEnumResponseModel {
    try value(for: \Self.internalCampaignType, codingKey: CodingKeys.internalCampaignType)
  }

  func description() throws -> String {
    try value(for: \Self.internalDescription, codingKey: CodingKeys.internalDescription)
  }

  func discountType() throws -> DiscountTypeEnumResponseModel? {
    try value(for: \Self.internalDiscountType, codingKey: CodingKeys.internalDiscountType)
  }

  func discountValue() throws -> Double? {
    try value(for: \Self.internalDiscountValue, codingKey: CodingKeys.internalDiscountValue)
  }

  func id() throws -> String {
    try value(for: \Self.internalId, codingKey: CodingKeys.internalId)
  }

  func name() throws -> String {
    try value(for: \Self.internalName, codingKey: CodingKeys.internalName)
  }

  func redemptionLimit() throws -> Double {
    try value(for: \Self.internalRedemptionLimit, codingKey: CodingKeys.internalRedemptionLimit)
  }

  func source() throws -> CampaignSourceEnumResponseModel {
    try value(for: \Self.internalSource, codingKey: CodingKeys.internalSource)
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    internalAutoApplied = try container.decodeOptionalIfPresent(Bool.self, forKey: .internalAutoApplied)
    internalBenefits = try container.decodeOptionalIfPresent([BenefitResponseModel]?.self, forKey: .internalBenefits)
    internalCampaignEndTime = try container.decodeOptionalIfPresent(String.self, forKey: .internalCampaignEndTime)
    internalCampaignType = try container.decodeOptionalIfPresent(CampaignTypeEnumResponseModel.self, forKey: .internalCampaignType)
    internalDescription = try container.decodeOptionalIfPresent(String.self, forKey: .internalDescription)
    internalDiscountType = try container.decodeOptionalIfPresent(DiscountTypeEnumResponseModel?.self, forKey: .internalDiscountType)
    internalDiscountValue = try container.decodeOptionalIfPresent(Double?.self, forKey: .internalDiscountValue)
    internalId = try container.decodeOptionalIfPresent(String.self, forKey: .internalId)
    internalName = try container.decodeOptionalIfPresent(String.self, forKey: .internalName)
    internalRedemptionLimit = try container.decodeOptionalIfPresent(Double.self, forKey: .internalRedemptionLimit)
    internalSource = try container.decodeOptionalIfPresent(CampaignSourceEnumResponseModel.self, forKey: .internalSource)
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalAutoApplied = "autoApplied"
    case internalBenefits = "benefits"
    case internalCampaignEndTime = "campaignEndTime"
    case internalCampaignType = "campaignType"
    case internalDescription = "description"
    case internalDiscountType = "discountType"
    case internalDiscountValue = "discountValue"
    case internalId = "id"
    case internalName = "name"
    case internalRedemptionLimit = "redemptionLimit"
    case internalSource = "source"
  }
}

struct CampaignsResponseModel: Codable {
  private let internalCampaignAttributes: Optional<[CampaignAttributeResponseModel]?>
  private let internalProductDeals: Optional<[ProductDealResponseModel]?>

  func campaignAttributes() throws -> [CampaignAttributeResponseModel]? {
    try value(for: \Self.internalCampaignAttributes, codingKey: CodingKeys.internalCampaignAttributes)
  }

  func productDeals() throws -> [ProductDealResponseModel]? {
    try value(for: \Self.internalProductDeals, codingKey: CodingKeys.internalProductDeals)
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    internalCampaignAttributes = try container.decodeOptionalIfPresent([CampaignAttributeResponseModel]?.self, forKey: .internalCampaignAttributes)
    internalProductDeals = try container.decodeOptionalIfPresent([ProductDealResponseModel]?.self, forKey: .internalProductDeals)
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalCampaignAttributes = "campaignAttributes"
    case internalProductDeals = "productDeals"
  }
}

struct CategoryResponseModel: Codable {
  private let internalId: Optional<String>
  private let internalImageUrls: Optional<[String]?>
  private let internalName: Optional<String>

  func id() throws -> String {
    try value(for: \Self.internalId, codingKey: CodingKeys.internalId)
  }

  func imageUrls() throws -> [String]? {
    try value(for: \Self.internalImageUrls, codingKey: CodingKeys.internalImageUrls)
  }

  func name() throws -> String {
    try value(for: \Self.internalName, codingKey: CodingKeys.internalName)
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    internalId = try container.decodeOptionalIfPresent(String.self, forKey: .internalId)
    internalImageUrls = try container.decodeOptionalIfPresent([String]?.self, forKey: .internalImageUrls)
    internalName = try container.decodeOptionalIfPresent(String.self, forKey: .internalName)
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalId = "id"
    case internalImageUrls = "imageUrls"
    case internalName = "name"
  }
}

struct CategoryTreeResponseModel: Codable {
  private let internalCategory: Optional<CategoryResponseModel>
  private let internalProductsCount: Optional<Int>
  private let internalSubCategories: Optional<[SubCategoryResponseModel]?>

  func category() throws -> CategoryResponseModel {
    try value(for: \Self.internalCategory, codingKey: CodingKeys.internalCategory)
  }

  func productsCount() throws -> Int {
    try value(for: \Self.internalProductsCount, codingKey: CodingKeys.internalProductsCount)
  }

  func subCategories() throws -> [SubCategoryResponseModel]? {
    try value(for: \Self.internalSubCategories, codingKey: CodingKeys.internalSubCategories)
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    internalCategory = try container.decodeOptionalIfPresent(CategoryResponseModel.self, forKey: .internalCategory)
    internalProductsCount = try container.decodeOptionalIfPresent(Int.self, forKey: .internalProductsCount)
    internalSubCategories = try container.decodeOptionalIfPresent([SubCategoryResponseModel]?.self, forKey: .internalSubCategories)
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalCategory = "category"
    case internalProductsCount = "productsCount"
    case internalSubCategories = "subCategories"
  }
}

struct DealResponseModel: Codable {
  private let internalCampaignId: Optional<String>
  private let internalDiscountTag: Optional<String>
  private let internalProgressTeaser: Optional<String?>
  private let internalTriggerQuantity: Optional<Int>

  func campaignId() throws -> String {
    try value(for: \Self.internalCampaignId, codingKey: CodingKeys.internalCampaignId)
  }

  /// things that would change across products for a campaign
  func discountTag() throws -> String {
    try value(for: \Self.internalDiscountTag, codingKey: CodingKeys.internalDiscountTag)
  }

  /// buy 3 get 1 free
  func progressTeaser() throws -> String? {
    try value(for: \Self.internalProgressTeaser, codingKey: CodingKeys.internalProgressTeaser)
  }

  func triggerQuantity() throws -> Int {
    try value(for: \Self.internalTriggerQuantity, codingKey: CodingKeys.internalTriggerQuantity)
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    internalCampaignId = try container.decodeOptionalIfPresent(String.self, forKey: .internalCampaignId)
    internalDiscountTag = try container.decodeOptionalIfPresent(String.self, forKey: .internalDiscountTag)
    internalProgressTeaser = try container.decodeOptionalIfPresent(String?.self, forKey: .internalProgressTeaser)
    internalTriggerQuantity = try container.decodeOptionalIfPresent(Int.self, forKey: .internalTriggerQuantity)
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalCampaignId = "campaignID"
    case internalDiscountTag = "discountTag"
    case internalProgressTeaser = "progressTeaser"
    case internalTriggerQuantity = "triggerQuantity"
  }
}

struct FoodLabellingResponseModel: Codable {
  private let internalAdditives: Optional<FoodLabellingInfoResponseModel?>
  private let internalAllergens: Optional<FoodLabellingInfoResponseModel?>
  private let internalNutritionFacts: Optional<[FoodLabellingInfoResponseModel?]?>
  private let internalProductClaims: Optional<[FoodLabellingInfoResponseModel?]?>
  private let internalProductInfos: Optional<[FoodLabellingInfoResponseModel?]?>
  private let internalWarnings: Optional<FoodLabellingInfoResponseModel?>

  func additives() throws -> FoodLabellingInfoResponseModel? {
    try value(for: \Self.internalAdditives, codingKey: CodingKeys.internalAdditives)
  }

  func allergens() throws -> FoodLabellingInfoResponseModel? {
    try value(for: \Self.internalAllergens, codingKey: CodingKeys.internalAllergens)
  }

  func nutritionFacts() throws -> [FoodLabellingInfoResponseModel?]? {
    try value(for: \Self.internalNutritionFacts, codingKey: CodingKeys.internalNutritionFacts)
  }

  func productClaims() throws -> [FoodLabellingInfoResponseModel?]? {
    try value(for: \Self.internalProductClaims, codingKey: CodingKeys.internalProductClaims)
  }

  func productInfos() throws -> [FoodLabellingInfoResponseModel?]? {
    try value(for: \Self.internalProductInfos, codingKey: CodingKeys.internalProductInfos)
  }

  func warnings() throws -> FoodLabellingInfoResponseModel? {
    try value(for: \Self.internalWarnings, codingKey: CodingKeys.internalWarnings)
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    internalAdditives = try container.decodeOptionalIfPresent(FoodLabellingInfoResponseModel?.self, forKey: .internalAdditives)
    internalAllergens = try container.decodeOptionalIfPresent(FoodLabellingInfoResponseModel?.self, forKey: .internalAllergens)
    internalNutritionFacts = try container.decodeOptionalIfPresent([FoodLabellingInfoResponseModel?]?.self, forKey: .internalNutritionFacts)
    internalProductClaims = try container.decodeOptionalIfPresent([FoodLabellingInfoResponseModel?]?.self, forKey: .internalProductClaims)
    internalProductInfos = try container.decodeOptionalIfPresent([FoodLabellingInfoResponseModel?]?.self, forKey: .internalProductInfos)
    internalWarnings = try container.decodeOptionalIfPresent(FoodLabellingInfoResponseModel?.self, forKey: .internalWarnings)
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalAdditives = "additives"
    case internalAllergens = "allergens"
    case internalNutritionFacts = "nutritionFacts"
    case internalProductClaims = "productClaims"
    case internalProductInfos = "productInfos"
    case internalWarnings = "warnings"
  }
}

struct PageInfoResponseModel: Codable {
  private let internalIsLast: Optional<Bool>
  private let internalPageNumber: Optional<Int>

  func isLast() throws -> Bool {
    try value(for: \Self.internalIsLast, codingKey: CodingKeys.internalIsLast)
  }

  func pageNumber() throws -> Int {
    try value(for: \Self.internalPageNumber, codingKey: CodingKeys.internalPageNumber)
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    internalIsLast = try container.decodeOptionalIfPresent(Bool.self, forKey: .internalIsLast)
    internalPageNumber = try container.decodeOptionalIfPresent(Int.self, forKey: .internalPageNumber)
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalIsLast = "isLast"
    case internalPageNumber = "pageNumber"
  }
}

struct ProductResponseModel: Codable {
  private let internalAttributes: Optional<[ProductAttributeResponseModel]?>
  private let internalDescription: Optional<String>
  private let internalFavourite: Optional<Bool>
  private let internalFoodLabelling: Optional<FoodLabellingResponseModel?>
  private let internalGlobalCatalogId: Optional<String>
  private let internalGlobalCatalogVendorId: Optional<String>
  private let internalIsAvailable: Optional<Bool>
  private let internalName: Optional<String>
  private let internalOriginalPrice: Optional<Double>
  private let internalPackagingCharge: Optional<Double>
  private let internalParentId: Optional<String>
  private let internalPrice: Optional<Double>
  private let internalProductId: Optional<String>
  private let internalStockAmount: Optional<Int>
  private let internalTags: Optional<[String]>
  private let internalUrls: Optional<[String]>

  func attributes() throws -> [ProductAttributeResponseModel]? {
    try value(for: \Self.internalAttributes, codingKey: CodingKeys.internalAttributes)
  }

  func description() throws -> String {
    try value(for: \Self.internalDescription, codingKey: CodingKeys.internalDescription)
  }

  func favourite() throws -> Bool {
    try value(for: \Self.internalFavourite, codingKey: CodingKeys.internalFavourite)
  }

  func foodLabelling() throws -> FoodLabellingResponseModel? {
    try value(for: \Self.internalFoodLabelling, codingKey: CodingKeys.internalFoodLabelling)
  }

  func globalCatalogId() throws -> String {
    try value(for: \Self.internalGlobalCatalogId, codingKey: CodingKeys.internalGlobalCatalogId)
  }

  func globalCatalogVendorId() throws -> String {
    try value(for: \Self.internalGlobalCatalogVendorId, codingKey: CodingKeys.internalGlobalCatalogVendorId)
  }

  func isAvailable() throws -> Bool {
    try value(for: \Self.internalIsAvailable, codingKey: CodingKeys.internalIsAvailable)
  }

  func name() throws -> String {
    try value(for: \Self.internalName, codingKey: CodingKeys.internalName)
  }

  func originalPrice() throws -> Double {
    try value(for: \Self.internalOriginalPrice, codingKey: CodingKeys.internalOriginalPrice)
  }

  func packagingCharge() throws -> Double {
    try value(for: \Self.internalPackagingCharge, codingKey: CodingKeys.internalPackagingCharge)
  }

  func parentId() throws -> String {
    try value(for: \Self.internalParentId, codingKey: CodingKeys.internalParentId)
  }

  func price() throws -> Double {
    try value(for: \Self.internalPrice, codingKey: CodingKeys.internalPrice)
  }

  func productId() throws -> String {
    try value(for: \Self.internalProductId, codingKey: CodingKeys.internalProductId)
  }

  func stockAmount() throws -> Int {
    try value(for: \Self.internalStockAmount, codingKey: CodingKeys.internalStockAmount)
  }

  func tags() throws -> [String] {
    try value(for: \Self.internalTags, codingKey: CodingKeys.internalTags)
  }

  func urls() throws -> [String] {
    try value(for: \Self.internalUrls, codingKey: CodingKeys.internalUrls)
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    internalAttributes = try container.decodeOptionalIfPresent([ProductAttributeResponseModel]?.self, forKey: .internalAttributes)
    internalDescription = try container.decodeOptionalIfPresent(String.self, forKey: .internalDescription)
    internalFavourite = try container.decodeOptionalIfPresent(Bool.self, forKey: .internalFavourite)
    internalFoodLabelling = try container.decodeOptionalIfPresent(FoodLabellingResponseModel?.self, forKey: .internalFoodLabelling)
    internalGlobalCatalogId = try container.decodeOptionalIfPresent(String.self, forKey: .internalGlobalCatalogId)
    internalGlobalCatalogVendorId = try container.decodeOptionalIfPresent(String.self, forKey: .internalGlobalCatalogVendorId)
    internalIsAvailable = try container.decodeOptionalIfPresent(Bool.self, forKey: .internalIsAvailable)
    internalName = try container.decodeOptionalIfPresent(String.self, forKey: .internalName)
    internalOriginalPrice = try container.decodeOptionalIfPresent(Double.self, forKey: .internalOriginalPrice)
    internalPackagingCharge = try container.decodeOptionalIfPresent(Double.self, forKey: .internalPackagingCharge)
    internalParentId = try container.decodeOptionalIfPresent(String.self, forKey: .internalParentId)
    internalPrice = try container.decodeOptionalIfPresent(Double.self, forKey: .internalPrice)
    internalProductId = try container.decodeOptionalIfPresent(String.self, forKey: .internalProductId)
    internalStockAmount = try container.decodeOptionalIfPresent(Int.self, forKey: .internalStockAmount)
    internalTags = try container.decodeOptionalIfPresent([String].self, forKey: .internalTags)
    internalUrls = try container.decodeOptionalIfPresent([String].self, forKey: .internalUrls)
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalAttributes = "attributes"
    case internalDescription = "description"
    case internalFavourite = "favourite"
    case internalFoodLabelling = "foodLabelling"
    case internalGlobalCatalogId = "globalCatalogID"
    case internalGlobalCatalogVendorId = "globalCatalogVendorID"
    case internalIsAvailable = "isAvailable"
    case internalName = "name"
    case internalOriginalPrice = "originalPrice"
    case internalPackagingCharge = "packagingCharge"
    case internalParentId = "parentID"
    case internalPrice = "price"
    case internalProductId = "productID"
    case internalStockAmount = "stockAmount"
    case internalTags = "tags"
    case internalUrls = "urls"
  }
}

struct ProductAttributeResponseModel: Codable {
  private let internalKey: Optional<String>
  private let internalValue: Optional<String>

  func key() throws -> String {
    try value(for: \Self.internalKey, codingKey: CodingKeys.internalKey)
  }

  func value() throws -> String {
    try value(for: \Self.internalValue, codingKey: CodingKeys.internalValue)
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    internalKey = try container.decodeOptionalIfPresent(String.self, forKey: .internalKey)
    internalValue = try container.decodeOptionalIfPresent(String.self, forKey: .internalValue)
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalKey = "key"
    case internalValue = "value"
  }
}

struct ProductDealResponseModel: Codable {
  private let internalDeals: Optional<[DealResponseModel]?>
  private let internalProductId: Optional<String>

  func deals() throws -> [DealResponseModel]? {
    try value(for: \Self.internalDeals, codingKey: CodingKeys.internalDeals)
  }

  func productId() throws -> String {
    try value(for: \Self.internalProductId, codingKey: CodingKeys.internalProductId)
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    internalDeals = try container.decodeOptionalIfPresent([DealResponseModel]?.self, forKey: .internalDeals)
    internalProductId = try container.decodeOptionalIfPresent(String.self, forKey: .internalProductId)
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalDeals = "deals"
    case internalProductId = "productID"
  }
}

struct ProductFilterResultResponseModel: Codable {
  private let internalItems: Optional<[ProductResponseModel]?>
  private let internalPageInfo: Optional<PageInfoResponseModel?>

  func items() throws -> [ProductResponseModel]? {
    try value(for: \Self.internalItems, codingKey: CodingKeys.internalItems)
  }

  func pageInfo() throws -> PageInfoResponseModel? {
    try value(for: \Self.internalPageInfo, codingKey: CodingKeys.internalPageInfo)
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    internalItems = try container.decodeOptionalIfPresent([ProductResponseModel]?.self, forKey: .internalItems)
    internalPageInfo = try container.decodeOptionalIfPresent(PageInfoResponseModel?.self, forKey: .internalPageInfo)
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalItems = "items"
    case internalPageInfo = "pageInfo"
  }
}

struct QueryResponseModel: Codable {
  let campaigns: Optional<CampaignsResponseModel?>
  let products: Optional<ProductFilterResultResponseModel>
  let shopDetails: Optional<ShopDetailsResponseModel?>

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case campaigns
    case products
    case shopDetails
  }
}

struct ShopDetailsResponseModel: Codable {
  private let internalCategories: Optional<[CategoryTreeResponseModel]?>
  private let internalShopItemsResponse: Optional<ShopItemsResponseResponseModel?>

  func categories() throws -> [CategoryTreeResponseModel]? {
    try value(for: \Self.internalCategories, codingKey: CodingKeys.internalCategories)
  }

  func shopItemsResponse() throws -> ShopItemsResponseResponseModel? {
    try value(for: \Self.internalShopItemsResponse, codingKey: CodingKeys.internalShopItemsResponse)
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    internalCategories = try container.decodeOptionalIfPresent([CategoryTreeResponseModel]?.self, forKey: .internalCategories)
    internalShopItemsResponse = try container.decodeOptionalIfPresent(ShopItemsResponseResponseModel?.self, forKey: .internalShopItemsResponse)
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalCategories = "categories"
    case internalShopItemsResponse = "shopItemsResponse"
  }
}

struct ShopItemsResponseResponseModel: Codable {
  private let internalPageInfo: Optional<PageInfoResponseModel?>
  private let internalShopItemsList: Optional<[ShopItemsListResponseModel]?>

  func pageInfo() throws -> PageInfoResponseModel? {
    try value(for: \Self.internalPageInfo, codingKey: CodingKeys.internalPageInfo)
  }

  func shopItemsList() throws -> [ShopItemsListResponseModel]? {
    try value(for: \Self.internalShopItemsList, codingKey: CodingKeys.internalShopItemsList)
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    internalPageInfo = try container.decodeOptionalIfPresent(PageInfoResponseModel?.self, forKey: .internalPageInfo)
    internalShopItemsList = try container.decodeOptionalIfPresent([ShopItemsListResponseModel]?.self, forKey: .internalShopItemsList)
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalPageInfo = "pageInfo"
    case internalShopItemsList = "shopItemsList"
  }
}

struct SubCategoryResponseModel: Codable {
  private let internalId: Optional<String>
  private let internalName: Optional<String>

  func id() throws -> String {
    try value(for: \Self.internalId, codingKey: CodingKeys.internalId)
  }

  func name() throws -> String {
    try value(for: \Self.internalName, codingKey: CodingKeys.internalName)
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

    internalId = try container.decodeOptionalIfPresent(String.self, forKey: .internalId)
    internalName = try container.decodeOptionalIfPresent(String.self, forKey: .internalName)
  }

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case internalId = "id"
    case internalName = "name"
  }
}

// MARK: - Input Objects

struct ProductRequestRequestModel: Codable {
  let vendorId: String

  let globalEntityId: String

  let locale: String

  let productIdentifier: ProductIdentifierRequestModel

  let customerId: String?

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case vendorId = "vendorID"
    case globalEntityId = "globalEntityID"
    case locale
    case productIdentifier
    case customerId = "customerID"
  }
}

struct ProductsFilterRequestRequestModel: Codable {
  let vendorId: String

  let globalEntityId: String

  let locale: String

  let platform: String?

  let customerId: String?

  let page: Int?

  let filters: [ProductFilterInputRequestModel]?

  let isDarkstore: Bool

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case vendorId = "vendorID"
    case globalEntityId = "globalEntityID"
    case locale
    case platform
    case customerId = "customerID"
    case page
    case filters
    case isDarkstore
  }
}

struct ProductFilterInputRequestModel: Codable {
  let type: ProductFilterTypeEnumResponseModel

  let id: String

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case type
    case id
  }
}

struct ProductIdentifierRequestModel: Codable {
  let type: ProductIdentifierTypeEnumResponseModel

  let value: String

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case type
    case value
  }
}

struct LocationRequestModel: Codable {
  let latitude: Double

  let longitude: Double

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case latitude
    case longitude
  }
}

struct RequestParamsRequestModel: Codable {
  let locale: String?

  let location: LocationRequestModel

  let vendorId: String

  let globalEntityId: String

  let openingType: OpeningTypeEnumResponseModel

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case locale
    case location
    case vendorId
    case globalEntityId
    case openingType
  }
}

struct ShopDetailsRequestRequestModel: Codable {
  let vendorId: String

  let globalEntityId: String

  let isDarkstore: Bool

  let customerId: String?

  let locale: String

  let platform: String

  let pastOrderStrategy: PastOrderStrategyEnumResponseModel?

  // MARK: - CodingKeys

  private enum CodingKeys: String, CodingKey {
    case vendorId = "vendorID"
    case globalEntityId = "globalEntityID"
    case isDarkstore
    case customerId = "customerID"
    case locale
    case platform
    case pastOrderStrategy
  }
}



// MARK: - GraphQLRequesting

/// CampaignsQueryRequest
struct CampaignsQueryRequest: GraphQLRequesting {
  // MARK: - GraphQLRequestType

  let requestType: GraphQLRequestType = .query
  let requestName: String = "campaigns"
  let rootSelectionKeys: Set<String> = ["CampaignsCampaignsFragment"]

  // MARK: - Arguments

  let vendorId: String

  let globalEntityId: String

  let locale: String

  private enum CodingKeys: String, CodingKey {
    case vendorId = "campaignsVendorId"

    case globalEntityId = "campaignsGlobalEntityId"

    case locale = "campaignsLocale"
  }

  init(
    globalEntityId: String,
    locale: String,
    vendorId: String
  ) {
    self.globalEntityId = globalEntityId
    self.locale = locale
    self.vendorId = vendorId
  }

  let requestQuery: String = {
    """
    campaigns(
      VendorID: $campaignsVendorId
      GlobalEntityID: $campaignsGlobalEntityId
      Locale: $campaignsLocale
    ) {
       ...CampaignsCampaignsFragment
    }
    """
  }()

  let requestArguments: String = {
    """
    $campaignsGlobalEntityId: String!,
    $campaignsLocale: String!,
    $campaignsVendorId: String!
    """
  }()

  func requestFragments(with selections: GraphQLSelections) -> String {
    selections.requestFragments(for: requestName, rootSelectionKeys: rootSelectionKeys)
  }
}

/// ProductsQueryRequest
struct ProductsQueryRequest: GraphQLRequesting {
  // MARK: - GraphQLRequestType

  let requestType: GraphQLRequestType = .query
  let requestName: String = "products"
  let rootSelectionKeys: Set<String> = ["ProductsProductFilterResultFragment"]

  // MARK: - Arguments

  let productsAttributesKeys: [String]?

  let input: ProductsFilterRequestRequestModel?

  private enum CodingKeys: String, CodingKey {
    case productsAttributesKeys

    case input = "productsInput"
  }

  init(
    input: ProductsFilterRequestRequestModel?,
    productsAttributesKeys: [String]?
  ) {
    self.input = input
    self.productsAttributesKeys = productsAttributesKeys
  }

  let requestQuery: String = {
    """
    products(
      input: $productsInput
    ) {
       ...ProductsProductFilterResultFragment
    }
    """
  }()

  let requestArguments: String = {
    """
    $productsAttributesKeys: [String!],
    $productsInput: ProductsFilterRequest
    """
  }()

  func requestFragments(with selections: GraphQLSelections) -> String {
    selections.requestFragments(for: requestName, rootSelectionKeys: rootSelectionKeys)
  }
}

/// ShopDetailsQueryRequest
struct ShopDetailsQueryRequest: GraphQLRequesting {
  // MARK: - GraphQLRequestType

  let requestType: GraphQLRequestType = .query
  let requestName: String = "shopDetails"
  let rootSelectionKeys: Set<String> = ["ShopDetailsShopDetailsFragment"]

  // MARK: - Arguments

  let input: ShopDetailsRequestRequestModel?

  let shopDetailsShopItemsResponsePage: Int

  private enum CodingKeys: String, CodingKey {
    case input = "shopDetailsInput"

    case shopDetailsShopItemsResponsePage
  }

  init(
    input: ShopDetailsRequestRequestModel?,
    shopDetailsShopItemsResponsePage: Int
  ) {
    self.input = input
    self.shopDetailsShopItemsResponsePage = shopDetailsShopItemsResponsePage
  }

  let requestQuery: String = {
    """
    shopDetails(
      input: $shopDetailsInput
    ) {
       ...ShopDetailsShopDetailsFragment
    }
    """
  }()

  let requestArguments: String = {
    """
    $shopDetailsInput: ShopDetailsRequest,
    $shopDetailsShopItemsResponsePage: Int!
    """
  }()

  func requestFragments(with selections: GraphQLSelections) -> String {
    selections.requestFragments(for: requestName, rootSelectionKeys: rootSelectionKeys)
  }
}

struct QueryRequest: GraphQLRequesting {
  let requestType: GraphQLRequestType = .query
  let requestName: String = ""
  var rootSelectionKeys: Set<String> {
    return requests.reduce(into: Set<String>()) { result, request in
      request.rootSelectionKeys.forEach {
        result.insert($0)
      }
    }
  }

  let campaigns: CampaignsQueryRequest?
  let products: ProductsQueryRequest?
  let shopDetails: ShopDetailsQueryRequest?

  private var requests: [GraphQLRequesting] {
    let requests: [GraphQLRequesting?] = [
      campaigns,
      products,
      shopDetails
    ]

    return requests.compactMap { $0 }
  }

  init(
    campaigns: CampaignsQueryRequest? = nil,
    products: ProductsQueryRequest? = nil,
    shopDetails: ShopDetailsQueryRequest? = nil
  ) {
    self.campaigns = campaigns
    self.products = products
    self.shopDetails = shopDetails
  }

  func encode(to encoder: Encoder) throws {
    try requests.forEach {
      try $0.encode(to: encoder)
    }
  }

  var requestQuery: String {
    requests
      .map { $0.requestQuery }
      .joined(separator: "\n")
  }

  var requestArguments: String {
    requests
      .map { $0.requestArguments }
      .joined(separator: "\n")
  }

  func requestFragments(with selections: GraphQLSelections) -> String {
    requests.map {
      selections.requestFragments(for: $0.requestName, rootSelectionKeys: rootSelectionKeys)
    }.joined(separator: "\n")
  }
}

struct CampaignsQueryResponse: Codable {
  let campaigns: CampaignsResponseModel?
}

struct ProductsQueryResponse: Codable {
  let products: ProductFilterResultResponseModel
}

struct ShopDetailsQueryResponse: Codable {
  let shopDetails: ShopDetailsResponseModel?
}

// MARK: - GraphQLSelection

enum BannerSelection: String, GraphQLSelection {
  case bannerUrl
  case globalId = "globalID"
  case isStatic
  case name
  case position
  case targetAudience
}

enum BenefitSelection: String, GraphQLSelection {
  case productId = "productID"
  case quantity
}

enum CampaignAttributeSelection: String, GraphQLSelection {
  case autoApplied
  case benefits = """
  benefits {
    ...%@BenefitFragment
  }
  """
  case campaignEndTime
  case campaignType
  case description
  case discountType
  case discountValue
  case id
  case name
  case redemptionLimit
  case source
}

enum CampaignsSelection: String, GraphQLSelection {
  case campaignAttributes = """
  campaignAttributes {
    ...%@CampaignAttributeFragment
  }
  """
  case productDeals = """
  productDeals {
    ...%@ProductDealFragment
  }
  """
}

enum CategorySelection: String, GraphQLSelection {
  case id
  case imageUrls
  case name
}

enum CategoryTreeSelection: String, GraphQLSelection {
  case category = """
  category {
    ...%@CategoryFragment
  }
  """
  case productsCount
  case subCategories = """
  subCategories {
    ...%@SubCategoryFragment
  }
  """
}

enum DealSelection: String, GraphQLSelection {
  case campaignId = "campaignID"
  case discountTag
  case progressTeaser
  case triggerQuantity
}

enum FoodLabellingSelection: String, GraphQLSelection {
  case additives = """
  additives {
    ...%@FoodLabellingInfoFragment
  }
  """
  case allergens = """
  allergens {
    ...%@FoodLabellingInfoFragment
  }
  """
  case nutritionFacts = """
  nutritionFacts {
    ...%@FoodLabellingInfoFragment
  }
  """
  case productClaims = """
  productClaims {
    ...%@FoodLabellingInfoFragment
  }
  """
  case productInfos = """
  productInfos {
    ...%@FoodLabellingInfoFragment
  }
  """
  case warnings = """
  warnings {
    ...%@FoodLabellingInfoFragment
  }
  """
}

enum FoodLabellingInfoSelection: String, GraphQLSelection {
  case labelTitle
  case labelValues
}

enum PageInfoSelection: String, GraphQLSelection {
  case isLast
  case pageNumber
}

enum ProductSelection: String, GraphQLSelection {
  case attributes = """
  attributes(
    keys: $%@AttributesKeys
  ) {
    ...%@ProductAttributeFragment
  }
  """
  case description
  case favourite
  case foodLabelling = """
  foodLabelling {
    ...%@FoodLabellingFragment
  }
  """
  case globalCatalogId = "globalCatalogID"
  case globalCatalogVendorId = "globalCatalogVendorID"
  case isAvailable
  case name
  case originalPrice
  case packagingCharge
  case parentId = "parentID"
  case price
  case productId = "productID"
  case stockAmount
  case tags
  case urls
}

enum ProductAttributeSelection: String, GraphQLSelection {
  case key
  case value
}

enum ProductDealSelection: String, GraphQLSelection {
  case deals = """
  deals {
    ...%@DealFragment
  }
  """
  case productId = "productID"
}

enum ProductFilterResultSelection: String, GraphQLSelection {
  case items = """
  items {
    ...%@ProductFragment
  }
  """
  case pageInfo = """
  pageInfo {
    ...%@PageInfoFragment
  }
  """
}

enum ShopDetailsSelection: String, GraphQLSelection {
  case categories = """
  categories {
    ...%@CategoryTreeFragment
  }
  """
  case shopItemsResponse = """
  shopItemsResponse(
    page: $%@ShopItemsResponsePage
  ) {
    ...%@ShopItemsResponseFragment
  }
  """
}

enum ShopItemsListSelection: String, GraphQLSelection {
  case headline
  case shopItemId = "shopItemID"
  case shopItemType
  case shopItems = """
  shopItems {
    ...%@ShopItemFragment
  }
  """
  case swimlaneFilterType
  case trackingId = "trackingID"
}

enum ShopItemsResponseSelection: String, GraphQLSelection {
  case pageInfo = """
  pageInfo {
    ...%@PageInfoFragment
  }
  """
  case shopItemsList = """
  shopItemsList {
    ...%@ShopItemsListFragment
  }
  """
}

enum SubCategorySelection: String, GraphQLSelection {
  case id
  case name
}

struct QueryRequestSelections: GraphQLSelections {
  let banner: Set<BannerSelection>
  let benefit: Set<BenefitSelection>
  let campaignAttribute: Set<CampaignAttributeSelection>
  let campaigns: Set<CampaignsSelection>
  let category: Set<CategorySelection>
  let categoryTree: Set<CategoryTreeSelection>
  let deal: Set<DealSelection>
  let foodLabelling: Set<FoodLabellingSelection>
  let foodLabellingInfo: Set<FoodLabellingInfoSelection>
  let pageInfo: Set<PageInfoSelection>
  let product: Set<ProductSelection>
  let productAttribute: Set<ProductAttributeSelection>
  let productDeal: Set<ProductDealSelection>
  let productFilterResult: Set<ProductFilterResultSelection>
  let shopDetails: Set<ShopDetailsSelection>
  let shopItemsList: Set<ShopItemsListSelection>
  let shopItemsResponse: Set<ShopItemsResponseSelection>
  let subCategory: Set<SubCategorySelection>

  init(
    banner: Set<BannerSelection> = .allFields,
    benefit: Set<BenefitSelection> = .allFields,
    campaignAttribute: Set<CampaignAttributeSelection> = .allFields,
    campaigns: Set<CampaignsSelection> = .allFields,
    category: Set<CategorySelection> = .allFields,
    categoryTree: Set<CategoryTreeSelection> = .allFields,
    deal: Set<DealSelection> = .allFields,
    foodLabelling: Set<FoodLabellingSelection> = .allFields,
    foodLabellingInfo: Set<FoodLabellingInfoSelection> = .allFields,
    pageInfo: Set<PageInfoSelection> = .allFields,
    product: Set<ProductSelection> = .allFields,
    productAttribute: Set<ProductAttributeSelection> = .allFields,
    productDeal: Set<ProductDealSelection> = .allFields,
    productFilterResult: Set<ProductFilterResultSelection> = .allFields,
    shopDetails: Set<ShopDetailsSelection> = .allFields,
    shopItemsList: Set<ShopItemsListSelection> = .allFields,
    shopItemsResponse: Set<ShopItemsResponseSelection> = .allFields,
    subCategory: Set<SubCategorySelection> = .allFields
  ) {
    self.banner = banner
    self.benefit = benefit
    self.campaignAttribute = campaignAttribute
    self.campaigns = campaigns
    self.category = category
    self.categoryTree = categoryTree
    self.deal = deal
    self.foodLabelling = foodLabelling
    self.foodLabellingInfo = foodLabellingInfo
    self.pageInfo = pageInfo
    self.product = product
    self.productAttribute = productAttribute
    self.productDeal = productDeal
    self.productFilterResult = productFilterResult
    self.shopDetails = shopDetails
    self.shopItemsList = shopItemsList
    self.shopItemsResponse = shopItemsResponse
    self.subCategory = subCategory
  }

  func requestFragments(for requestName: String, rootSelectionKeys: Set<String>) -> String {
    let capitalizedRequestName = requestName.prefix(1).uppercased() + requestName.dropFirst()

    let bannerDeclaration = """
    fragment \(capitalizedRequestName)BannerFragment on Banner {
    	\(banner.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let benefitDeclaration = """
    fragment \(capitalizedRequestName)BenefitFragment on Benefit {
    	\(benefit.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let campaignAttributeDeclaration = """
    fragment \(capitalizedRequestName)CampaignAttributeFragment on CampaignAttribute {
    	\(campaignAttribute.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let campaignsDeclaration = """
    fragment \(capitalizedRequestName)CampaignsFragment on Campaigns {
    	\(campaigns.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let categoryDeclaration = """
    fragment \(capitalizedRequestName)CategoryFragment on Category {
    	\(category.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let categoryTreeDeclaration = """
    fragment \(capitalizedRequestName)CategoryTreeFragment on CategoryTree {
    	\(categoryTree.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let dealDeclaration = """
    fragment \(capitalizedRequestName)DealFragment on Deal {
    	\(deal.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let foodLabellingDeclaration = """
    fragment \(capitalizedRequestName)FoodLabellingFragment on FoodLabelling {
    	\(foodLabelling.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let foodLabellingInfoDeclaration = """
    fragment \(capitalizedRequestName)FoodLabellingInfoFragment on FoodLabellingInfo {
    	\(foodLabellingInfo.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let pageInfoDeclaration = """
    fragment \(capitalizedRequestName)PageInfoFragment on PageInfo {
    	\(pageInfo.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let productDeclaration = """
    fragment \(capitalizedRequestName)ProductFragment on Product {
    	\(product.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let productAttributeDeclaration = """
    fragment \(capitalizedRequestName)ProductAttributeFragment on ProductAttribute {
    	\(productAttribute.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let productDealDeclaration = """
    fragment \(capitalizedRequestName)ProductDealFragment on ProductDeal {
    	\(productDeal.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let productFilterResultDeclaration = """
    fragment \(capitalizedRequestName)ProductFilterResultFragment on ProductFilterResult {
    	\(productFilterResult.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let shopDetailsDeclaration = """
    fragment \(capitalizedRequestName)ShopDetailsFragment on ShopDetails {
    	\(shopDetails.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let shopItemsListDeclaration = """
    fragment \(capitalizedRequestName)ShopItemsListFragment on ShopItemsList {
    	\(shopItemsList.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let shopItemsResponseDeclaration = """
    fragment \(capitalizedRequestName)ShopItemsResponseFragment on ShopItemsResponse {
    	\(shopItemsResponse.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let subCategoryDeclaration = """
    fragment \(capitalizedRequestName)SubCategoryFragment on SubCategory {
    	\(subCategory.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let selectionDeclarationMap = [
      "\(capitalizedRequestName)BannerFragment": bannerDeclaration,
      "\(capitalizedRequestName)BenefitFragment": benefitDeclaration,
      "\(capitalizedRequestName)CampaignAttributeFragment": campaignAttributeDeclaration,
      "\(capitalizedRequestName)CampaignsFragment": campaignsDeclaration,
      "\(capitalizedRequestName)CategoryFragment": categoryDeclaration,
      "\(capitalizedRequestName)CategoryTreeFragment": categoryTreeDeclaration,
      "\(capitalizedRequestName)DealFragment": dealDeclaration,
      "\(capitalizedRequestName)FoodLabellingFragment": foodLabellingDeclaration,
      "\(capitalizedRequestName)FoodLabellingInfoFragment": foodLabellingInfoDeclaration,
      "\(capitalizedRequestName)PageInfoFragment": pageInfoDeclaration,
      "\(capitalizedRequestName)ProductFragment": productDeclaration,
      "\(capitalizedRequestName)ProductAttributeFragment": productAttributeDeclaration,
      "\(capitalizedRequestName)ProductDealFragment": productDealDeclaration,
      "\(capitalizedRequestName)ProductFilterResultFragment": productFilterResultDeclaration,
      "\(capitalizedRequestName)ShopDetailsFragment": shopDetailsDeclaration,
      "\(capitalizedRequestName)ShopItemsListFragment": shopItemsListDeclaration,
      "\(capitalizedRequestName)ShopItemsResponseFragment": shopItemsResponseDeclaration,
      "\(capitalizedRequestName)SubCategoryFragment": subCategoryDeclaration
    ]

    let fragmentMaps = rootSelectionKeys
      .map {
        requestFragments(
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

struct CampaignsQueryRequestSelections: GraphQLSelections {
  let benefitSelections: Set<BenefitSelection>
  let campaignAttributeSelections: Set<CampaignAttributeSelection>
  let campaignsSelections: Set<CampaignsSelection>
  let dealSelections: Set<DealSelection>
  let productDealSelections: Set<ProductDealSelection>

  init(
    benefitSelections: Set<BenefitSelection> = .allFields,
    campaignAttributeSelections: Set<CampaignAttributeSelection> = .allFields,
    campaignsSelections: Set<CampaignsSelection> = .allFields,
    dealSelections: Set<DealSelection> = .allFields,
    productDealSelections: Set<ProductDealSelection> = .allFields
  ) {
    self.benefitSelections = benefitSelections
    self.campaignAttributeSelections = campaignAttributeSelections
    self.campaignsSelections = campaignsSelections
    self.dealSelections = dealSelections
    self.productDealSelections = productDealSelections
  }

  func requestFragments(for requestName: String, rootSelectionKeys: Set<String>) -> String {
    let capitalizedRequestName = requestName.prefix(1).uppercased() + requestName.dropFirst()

    let benefitSelectionsDeclaration = """
    fragment \(capitalizedRequestName)BenefitFragment on Benefit {
    	\(benefitSelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let campaignAttributeSelectionsDeclaration = """
    fragment \(capitalizedRequestName)CampaignAttributeFragment on CampaignAttribute {
    	\(campaignAttributeSelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let campaignsSelectionsDeclaration = """
    fragment \(capitalizedRequestName)CampaignsFragment on Campaigns {
    	\(campaignsSelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let dealSelectionsDeclaration = """
    fragment \(capitalizedRequestName)DealFragment on Deal {
    	\(dealSelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let productDealSelectionsDeclaration = """
    fragment \(capitalizedRequestName)ProductDealFragment on ProductDeal {
    	\(productDealSelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let selectionDeclarationMap = [
      "\(capitalizedRequestName)BenefitFragment": benefitSelectionsDeclaration,
      "\(capitalizedRequestName)CampaignAttributeFragment": campaignAttributeSelectionsDeclaration,
      "\(capitalizedRequestName)CampaignsFragment": campaignsSelectionsDeclaration,
      "\(capitalizedRequestName)DealFragment": dealSelectionsDeclaration,
      "\(capitalizedRequestName)ProductDealFragment": productDealSelectionsDeclaration
    ]

    let fragmentMaps = rootSelectionKeys
      .map {
        requestFragments(
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

struct ProductsQueryRequestSelections: GraphQLSelections {
  let foodLabellingSelections: Set<FoodLabellingSelection>
  let pageInfoSelections: Set<PageInfoSelection>
  let productSelections: Set<ProductSelection>
  let productAttributeSelections: Set<ProductAttributeSelection>
  let productFilterResultSelections: Set<ProductFilterResultSelection>

  init(
    foodLabellingSelections: Set<FoodLabellingSelection> = .allFields,
    pageInfoSelections: Set<PageInfoSelection> = .allFields,
    productSelections: Set<ProductSelection> = .allFields,
    productAttributeSelections: Set<ProductAttributeSelection> = .allFields,
    productFilterResultSelections: Set<ProductFilterResultSelection> = .allFields
  ) {
    self.foodLabellingSelections = foodLabellingSelections
    self.pageInfoSelections = pageInfoSelections
    self.productSelections = productSelections
    self.productAttributeSelections = productAttributeSelections
    self.productFilterResultSelections = productFilterResultSelections
  }

  func requestFragments(for requestName: String, rootSelectionKeys: Set<String>) -> String {
    let capitalizedRequestName = requestName.prefix(1).uppercased() + requestName.dropFirst()

    let foodLabellingSelectionsDeclaration = """
    fragment \(capitalizedRequestName)FoodLabellingFragment on FoodLabelling {
    	\(foodLabellingSelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let pageInfoSelectionsDeclaration = """
    fragment \(capitalizedRequestName)PageInfoFragment on PageInfo {
    	\(pageInfoSelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let productSelectionsDeclaration = """
    fragment \(capitalizedRequestName)ProductFragment on Product {
    	\(productSelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let productAttributeSelectionsDeclaration = """
    fragment \(capitalizedRequestName)ProductAttributeFragment on ProductAttribute {
    	\(productAttributeSelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let productFilterResultSelectionsDeclaration = """
    fragment \(capitalizedRequestName)ProductFilterResultFragment on ProductFilterResult {
    	\(productFilterResultSelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let selectionDeclarationMap = [
      "\(capitalizedRequestName)FoodLabellingFragment": foodLabellingSelectionsDeclaration,
      "\(capitalizedRequestName)PageInfoFragment": pageInfoSelectionsDeclaration,
      "\(capitalizedRequestName)ProductFragment": productSelectionsDeclaration,
      "\(capitalizedRequestName)ProductAttributeFragment": productAttributeSelectionsDeclaration,
      "\(capitalizedRequestName)ProductFilterResultFragment": productFilterResultSelectionsDeclaration
    ]

    let fragmentMaps = rootSelectionKeys
      .map {
        requestFragments(
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

struct ShopDetailsQueryRequestSelections: GraphQLSelections {
  let bannerSelections: Set<BannerSelection>
  let categorySelections: Set<CategorySelection>
  let categoryTreeSelections: Set<CategoryTreeSelection>
  let foodLabellingSelections: Set<FoodLabellingSelection>
  let pageInfoSelections: Set<PageInfoSelection>
  let productSelections: Set<ProductSelection>
  let productAttributeSelections: Set<ProductAttributeSelection>
  let shopDetailsSelections: Set<ShopDetailsSelection>

  let shopItemsListSelections: Set<ShopItemsListSelection>
  let shopItemsResponseSelections: Set<ShopItemsResponseSelection>
  let subCategorySelections: Set<SubCategorySelection>

  init(
    bannerSelections: Set<BannerSelection> = .allFields,
    categorySelections: Set<CategorySelection> = .allFields,
    categoryTreeSelections: Set<CategoryTreeSelection> = .allFields,
    foodLabellingSelections: Set<FoodLabellingSelection> = .allFields,
    pageInfoSelections: Set<PageInfoSelection> = .allFields,
    productSelections: Set<ProductSelection> = .allFields,
    productAttributeSelections: Set<ProductAttributeSelection> = .allFields,
    shopDetailsSelections: Set<ShopDetailsSelection> = .allFields,
    shopItemsListSelections: Set<ShopItemsListSelection> = .allFields,
    shopItemsResponseSelections: Set<ShopItemsResponseSelection> = .allFields,
    subCategorySelections: Set<SubCategorySelection> = .allFields
  ) {
    self.bannerSelections = bannerSelections
    self.categorySelections = categorySelections
    self.categoryTreeSelections = categoryTreeSelections
    self.foodLabellingSelections = foodLabellingSelections
    self.pageInfoSelections = pageInfoSelections
    self.productSelections = productSelections
    self.productAttributeSelections = productAttributeSelections
    self.shopDetailsSelections = shopDetailsSelections
    self.shopItemsListSelections = shopItemsListSelections
    self.shopItemsResponseSelections = shopItemsResponseSelections
    self.subCategorySelections = subCategorySelections
  }

  func requestFragments(for requestName: String, rootSelectionKeys: Set<String>) -> String {
    let capitalizedRequestName = requestName.prefix(1).uppercased() + requestName.dropFirst()

    let bannerSelectionsDeclaration = """
    fragment \(capitalizedRequestName)BannerFragment on Banner {
    	\(bannerSelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let categorySelectionsDeclaration = """
    fragment \(capitalizedRequestName)CategoryFragment on Category {
    	\(categorySelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let categoryTreeSelectionsDeclaration = """
    fragment \(capitalizedRequestName)CategoryTreeFragment on CategoryTree {
    	\(categoryTreeSelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let foodLabellingSelectionsDeclaration = """
    fragment \(capitalizedRequestName)FoodLabellingFragment on FoodLabelling {
    	\(foodLabellingSelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let pageInfoSelectionsDeclaration = """
    fragment \(capitalizedRequestName)PageInfoFragment on PageInfo {
    	\(pageInfoSelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let productSelectionsDeclaration = """
    fragment \(capitalizedRequestName)ProductFragment on Product {
    	\(productSelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let productAttributeSelectionsDeclaration = """
    fragment \(capitalizedRequestName)ProductAttributeFragment on ProductAttribute {
    	\(productAttributeSelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let shopDetailsSelectionsDeclaration = """
    fragment \(capitalizedRequestName)ShopDetailsFragment on ShopDetails {
    	\(shopDetailsSelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let shopItemSelectionsDeclaration = """
    fragment \(capitalizedRequestName)ShopItemFragment on ShopItem {
    	__typename
    	...\(capitalizedRequestName)BannerFragment
    	...\(capitalizedRequestName)CategoryFragment
    	...\(capitalizedRequestName)ProductFragment
    }
    """

    let shopItemsListSelectionsDeclaration = """
    fragment \(capitalizedRequestName)ShopItemsListFragment on ShopItemsList {
    	\(shopItemsListSelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let shopItemsResponseSelectionsDeclaration = """
    fragment \(capitalizedRequestName)ShopItemsResponseFragment on ShopItemsResponse {
    	\(shopItemsResponseSelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let subCategorySelectionsDeclaration = """
    fragment \(capitalizedRequestName)SubCategoryFragment on SubCategory {
    	\(subCategorySelections.requestFragments(requestName: capitalizedRequestName))
    }
    """

    let selectionDeclarationMap = [
      "\(capitalizedRequestName)BannerFragment": bannerSelectionsDeclaration,
      "\(capitalizedRequestName)CategoryFragment": categorySelectionsDeclaration,
      "\(capitalizedRequestName)CategoryTreeFragment": categoryTreeSelectionsDeclaration,
      "\(capitalizedRequestName)FoodLabellingFragment": foodLabellingSelectionsDeclaration,
      "\(capitalizedRequestName)PageInfoFragment": pageInfoSelectionsDeclaration,
      "\(capitalizedRequestName)ProductFragment": productSelectionsDeclaration,
      "\(capitalizedRequestName)ProductAttributeFragment": productAttributeSelectionsDeclaration,
      "\(capitalizedRequestName)ShopDetailsFragment": shopDetailsSelectionsDeclaration,
      "\(capitalizedRequestName)ShopItemFragment": shopItemSelectionsDeclaration,
      "\(capitalizedRequestName)ShopItemsListFragment": shopItemsListSelectionsDeclaration,
      "\(capitalizedRequestName)ShopItemsResponseFragment": shopItemsResponseSelectionsDeclaration,
      "\(capitalizedRequestName)SubCategoryFragment": subCategorySelectionsDeclaration
    ]

    let fragmentMaps = rootSelectionKeys
      .map {
        requestFragments(
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