//
//  PersonReviewView.swift
//  Eatery
//
//  Created by Mason Boyce on 6/29/21.
//


import SwiftUI

struct PersonReviewView: View {
    let person: Person
    @EnvironmentObject var reviews: Reviews
    var body: some View {
        
        ScrollView{
            ForEach(person.reviews){review in
                NavigationLink(destination: ContentView(review:review)
                ){
                   
                    HStack{
                        let star: String = String(format: "Num Stars %.1f", review.stars)
                        Image(review.photo)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 50)
                        Divider()
                        VStack{
                            Text(review.Name)
                            Text(star)
                        }
                    }
                }
                Divider()
            }
        }.navigationTitle("\(person.name)'s Reviews")
    }
    
}
