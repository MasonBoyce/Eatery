// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "63ccf3b8376da898327425fbbf58d042"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Review.self)
  }
}