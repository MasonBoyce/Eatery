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

    init(){
        let url = Bundle.main.url(forResource: "reviews", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        listReview = try! JSONDecoder().decode([Review].self, from: data)
    }
    func getListReview() -> [Review]{
        return listReview
    }
    
    
}
