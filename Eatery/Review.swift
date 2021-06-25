//
//  Review.swift
//  Eatery
//
//  Created by Mason Boyce on 6/25/21.
//

import Foundation

struct Review{
    let restaurant: String
    let stars: Double
    let text: String
    let photo: String
    let menuItem: String
    let person: String
    let eatAgain: String
    
    static let example = Review(restaurant: "Kellogs", stars: 4.5, text: "Itssss Great", photo: "FrostedFlakes", menuItem: "Frosted Flakes", person: "George", eatAgain: "true")

}
