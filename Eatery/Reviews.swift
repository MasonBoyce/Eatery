//
//  Reviews.swift
//  Eatery
//
//  Created by Mason Boyce on 6/28/21.
//

import Foundation

class Reviews:  ObservableObject{
    let listReview: [Review]
    
    var primary: Review{
        listReview[0]
    }

    init(person: Person){
        listReview = person.reviews
    }
    func getListReview() -> [Review]{
        return listReview
    }
    
     

}
