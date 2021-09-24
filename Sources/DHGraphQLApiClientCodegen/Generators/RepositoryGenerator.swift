//
//  File.swift
//  
//
//  Created by Romy Cheah on 24/9/21.
//

import Foundation
import GraphQLAST
import GraphQLCodegenUtil

enum RepositoryGeneratorError: Error, LocalizedError {
  case notImplemented(context: String)

  var errorDescription: String? {
    "\(Self.self).\(self)"
  }
}

struct RepositoryGenerator: Generating {
  private let namespace: String
  private let namespaceExtension: String
  private let entityNameMap: EntityNameMap

  init(namespace: String = "", entityNameMap: EntityNameMap) {
    self.namespace = namespace
    self.namespaceExtension = namespace.isEmpty ? "" : "\(namespace)."
    self.entityNameMap = entityNameMap
  }

  func code(schema: Schema) throws -> String {
    """
    \(try self.protocolCode(with: schema.operations))

    // MARK: - \(namespace)Repositoring

    final class \(namespace)Repository: \(namespace)Repositoring {
      private let restClient: RestClient
      private let scheduler: SchedulerType

      init(restClient: RestClient, scheduler: SchedulerType = ConcurrentDispatchQueueScheduler(qos: .background)) {
        self.restClient = restClient
        self.scheduler = scheduler
      }

      \(try schema.operations.map { try funcCode(with: $0).lines }.lines)

      \(try schema.operations.map { try executeCode(with: $0) }.lines)
    }
    """
  }
}

extension RepositoryGenerator {
  func protocolCode(with operation: GraphQLAST.Operation) throws -> String {
    let funcDeclarations: [String]

    switch operation {
    case let .query(objectType):
      funcDeclarations = try objectType.fields.map {
        try funcSignatureCode(field: $0, operation: operation)
      }
    case let .mutation(objectType):
      funcDeclarations = []
    case .subscription:
      throw RepositoryGeneratorError.notImplemented(
        context: "Subscription is not implemented"
      )
    }

    return funcDeclarations.lines
  }

  func protocolCode(with operations: [GraphQLAST.Operation]) throws -> String {
    return """
    protocol \(namespace)Repositoring {
      \(
        try operations.map {
          try protocolCode(with: $0)
        }.lines
      )
    }
    """
  }

  func funcCode(with operation: GraphQLAST.Operation) throws -> [String] {
    let operationName = operation.type.name.pascalCase

    switch operation {
    case let .query(objectType):
      return try objectType.fields.map {
        """
        \(try funcSignatureCode(field: $0, operation: operation)) {
          let resource = \(namespace)ResourceParameters.campaigns(request: request)

          return executeGraphQL\(operationName)(resource: resource)
        }
        """
      }
    case let .mutation(objectType):
      return []
    case .subscription:
      throw RepositoryGeneratorError.notImplemented(
        context: "Subscription is not implemented"
      )
    }
  }

  func funcSignatureCode(field: Field, operation: GraphQLAST.Operation) throws -> String {
    let responseDataText = namespaceExtension + field.name.pascalCase

    return """
    func \(field.name.camelCase)(
      with request: \(entityNameMap.request)<\(namespaceExtension)\(field.requestParameterName(with: operation))>
    ) -> \(responseGenericCode(text: responseDataText))
    """
  }

  /// Executation for operation type is generated only if its defined in the schema
  /// E.g. If the schema have no mutation, no mutation object will be present in the schema, thus executeGraphQL cannot be generated respectively
  func executeCode(with operation: GraphQLAST.Operation) throws -> String {
    let operationName = operation.type.name.pascalCase
    let responseDataText = "GraphQLResponse<\(namespaceExtension)\(operationName), T>"

    return """
    func executeGraphQL\(operationName)<T>(
      resource: ResourceParameters
    ) -> \(responseGenericCode(text: "T")) where T: Codable {
      let request: \(responseGenericCode(text: responseDataText)) = restClient
        .executeRequest(resource: resource)

      return request
        .map { apiResponse in
          return ApiResponse(
            data: apiResponse.data?.wrappedValue,
            httpURLResponse: apiResponse.httpURLResponse,
            metaData: apiResponse.metaData
          )
        }
        .subscribeOn(scheduler)
    }
    """
  }

  func responseGenericCode(text: String) -> String {
    "Single<ApiResponse<\(text)>>"
  }
}
