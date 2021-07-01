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
                    let star: String = String(format: "Num Stars %.1f", review.stars)
                    HStack{
                        
                        Image(review.photo)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 50)
                        Divider()
                        VStack{
                            Text(review.restaurant)
                            Text(star)
                        }
                    }
                }
                Divider()
            }
        }.navigationTitle("\(person.name)'s Reviews")
    }
    
}

/*struct PersonReviewView_Previews: PreviewProvider {
 static var previews: some View {
 PersonReviewView()
 }
 }*/
