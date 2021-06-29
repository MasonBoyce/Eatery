//
//  Review.swift
//  Eatery
//
//  Created by Mason Boyce on 6/25/21.
//

import Foundation

struct Review: Decodable, Identifiable{
    let id: Int
    let restaurant: String
    let stars: Double
    let text: String
    let photo: String
    let menuItem: String
    let person: String
    let eatAgain: String
    let latitude: Double
    let longitude: Double
    
}
