// @generated
// Do not edit this generated file
// swiftlint:disable all

import ApiClient
import Foundation
import RxSwift

protocol GroceriesApiClientImplementing {
  func campaigns(
    with parameters: CampaignsQueryRequestParameter
  ) -> Single<ApiResponse<CampaignsResponseObject?>>
}

// MARK: - GroceriesApiClientImplementing

final class GroceriesApiClient: GroceriesApiClientImplementing {
  private let restClient: RestClient
  private let scheduler: SchedulerType

  init(restClient: RestClient, scheduler: SchedulerType = ConcurrentDispatchQueueScheduler(qos: .background)) {
    self.restClient = restClient
    self.scheduler = scheduler
  }

  func campaigns(
    with parameters: CampaignsQueryRequestParameter
  ) -> Single<ApiResponse<CampaignsResponseObject?>> {
    let resource = GroceriesResourceParameters
      .queryCampaigns(parameters: parameters)

    return executeGraphQLQuery(
      responseData: CampaignsQueryResponse.self,
      resource: resource
    )
  }
}

private extension GroceriesApiClient {
  func executeGraphQLQuery<R, T>(
    responseData _: R.Type,
    resource: ResourceParameters
  ) -> Single<ApiResponse<T>> where R: GraphQLResponseData, T: Codable {
    let request: Single<ApiResponse<GraphQLResponse<R, T>>> = restClient
      .executeRequest(resource: resource)

    return request
      .map { apiResponse in
        ApiResponse(
          data: apiResponse.data?.wrappedValue,
          httpURLResponse: apiResponse.httpURLResponse,
          metaData: apiResponse.metaData
        )
      }
      .subscribeOn(scheduler)
  }
}

// MARK: - GroceriesResourceParameters

protocol GroceriesResourceParametersImplementing {
  func servicePath(with resourceParameters: GroceriesResourceParameters) -> String
  func headers(with resourceParameters: GroceriesResourceParameters) -> [String: String]?
  func timeoutInterval(with resourceParameters: GroceriesResourceParameters) -> TimeInterval?
  func preventRetry(with resourceParameters: GroceriesResourceParameters) -> Bool
  func preventAddingLanguageParameters(with resourceParameters: GroceriesResourceParameters) -> Bool
}

final class GroceriesResourceParametersDIContainer {
  static let shared = GroceriesResourceParametersDIContainer()

  var implementation: GroceriesResourceParametersImplementing?
}

enum GroceriesResourceParameters: ResourceParameters {
  private static var diContainer = GroceriesResourceParametersDIContainer.shared

  case queryCampaigns(parameters: CampaignsQueryRequestParameter)

  func bodyFormat() -> HttpBodyFormat {
    .JSON
  }

  func httpMethod() -> RequestHttpMethod {
    .post
  }

  func servicePath() -> String {
    Self.diContainer.implementation?.servicePath(with: self) ?? ""
  }

  func headers() -> [String: String]? {
    Self.diContainer.implementation?.headers(with: self) ?? nil
  }

  func timeoutInterval() -> TimeInterval? {
    Self.diContainer.implementation?.timeoutInterval(with: self) ?? nil
  }

  func preventRetry() -> Bool {
    Self.diContainer.implementation?.preventRetry(with: self) ?? false
  }

  func preventAddingLanguageParameters() -> Bool {
    Self.diContainer.implementation?.preventAddingLanguageParameters(with: self) ?? false
  }

  func bodyParameters() -> Any? {
    switch self {
    case let .queryCampaigns(parameters):
      return bodyParameters(parameters: parameters)
    }
  }

  private func bodyParameters<T>(parameters: T) -> [String: Any] where T: GraphQLRequestParameter {
    guard
      let data = try? JSONEncoder().encode(GraphQLRequest(parameters: parameters))
    else { return [:] }

    return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments))
      .flatMap {
        $0 as? [String: Any]
      } ?? [:]
  }
}

extension GraphQLResponse where ResponseData == CampaignsQueryResponse {
  var wrappedValue: ReturnType? {
    return data.campaigns as? ReturnType
  }
}
