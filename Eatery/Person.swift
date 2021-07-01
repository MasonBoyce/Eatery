//
//  Person.swift
//  Eatery
//
//  Created by Mason Boyce on 6/29/21.
//

import Foundation


class Person{
    let reviews: [Review]
    var zip: Int
    //let friends: [Person]
    let image: String
    let name: String
    init(reviews: [Review], zip: Int,image: String, name: String){
        self.reviews = reviews
        self.zip = zip
        //self.friends = friends
        self.name = name
        self.image = image
        
    }
    
}
