// swiftlint:disable all
import Amplify
import Foundation

extension Review {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case Name
    case Food
    case stars
    case content
    case photo
    case menuItem
    case person
    case eatAgain
    case latitude
    case longitude
    case createdAt
    case updatedAt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let review = Review.keys
    
    model.pluralName = "Reviews"
    
    model.fields(
      .id(),
      .field(review.Name, is: .required, ofType: .string),
      .field(review.Food, is: .required, ofType: .string),
      .field(review.stars, is: .required, ofType: .int),
      .field(review.content, is: .required, ofType: .string),
      .field(review.photo, is: .required, ofType: .string),
      .field(review.menuItem, is: .required, ofType: .string),
      .field(review.person, is: .required, ofType: .string),
      .field(review.eatAgain, is: .required, ofType: .string),
      .field(review.latitude, is: .required, ofType: .double),
      .field(review.longitude, is: .required, ofType: .double),
      .field(review.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(review.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime)
    )
    }
}