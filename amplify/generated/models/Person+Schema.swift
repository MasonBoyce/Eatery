// swiftlint:disable all
import Amplify
import Foundation

extension Person {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case reviews
    case zip
    case friends
    case image
    case name
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let person = Person.keys
    
    model.pluralName = "People"
    
    model.fields(
      .id(),
      .field(person.reviews, is: .required, ofType: .collection(of: Review.self)),
      .field(person.zip, is: .required, ofType: .int),
      .field(person.friends, is: .optional, ofType: .embeddedCollection(of: Person.self)),
      .field(person.image, is: .optional, ofType: .string),
      .field(person.name, is: .optional, ofType: .string)
    )
    }
}