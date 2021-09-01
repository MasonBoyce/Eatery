// swiftlint:disable all
import Amplify
import Foundation

public struct Person: Embeddable {
  var id: String
  var reviews: [Review]
  var zip: Int
  var friends: [Person]?
  var image: String?
  var name: String?
}