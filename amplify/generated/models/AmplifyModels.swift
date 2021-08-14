// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "017732d3f65b187748c491cb775c9dae"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Review.self)
  }
}