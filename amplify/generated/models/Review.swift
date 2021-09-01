// swiftlint:disable all
import Amplify
import Foundation

public struct Review: Model {
  public let id: String
  public var Name: String
  public var Food: String
  public var stars: Int
  public var content: String
  public var photo: String
  public var menuItem: String
  public var person: String
  public var eatAgain: String
  public var latitude: Double
  public var longitude: Double
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      Name: String,
      Food: String,
      stars: Int,
      content: String,
      photo: String,
      menuItem: String,
      person: String,
      eatAgain: String,
      latitude: Double,
      longitude: Double) {
    self.init(id: id,
      Name: Name,
      Food: Food,
      stars: stars,
      content: content,
      photo: photo,
      menuItem: menuItem,
      person: person,
      eatAgain: eatAgain,
      latitude: latitude,
      longitude: longitude,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      Name: String,
      Food: String,
      stars: Int,
      content: String,
      photo: String,
      menuItem: String,
      person: String,
      eatAgain: String,
      latitude: Double,
      longitude: Double,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.Name = Name
      self.Food = Food
      self.stars = stars
      self.content = content
      self.photo = photo
      self.menuItem = menuItem
      self.person = person
      self.eatAgain = eatAgain
      self.latitude = latitude
      self.longitude = longitude
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}