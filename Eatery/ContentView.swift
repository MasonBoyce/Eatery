//
//  ContentView.swift
//  Eatery
//
//  Created by Mason Boyce on 6/25/21.
//

import SwiftUI

struct ContentView: View {
    let review: Review
    var body: some View {
        ScrollView{
        VStack(){
        Text(review.restaurant)
                .font(.largeTitle)
                .bold()
            .foregroundColor(.primary)
        Text(review.menuItem)
            
            .foregroundColor(.secondary)
            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
            HStack{
                Text("Stars:")
                
                ForEach (0..<Int(review.stars)) {_ in
                    Image(systemName: "star.fill")
                }
                if review.stars > Double(Int(review.stars)) {
                    Image(systemName: "star.leadinghalf.fill")
                }
                }

            Image(review.photo)
                .resizable()
                .scaledToFit()
            Text("Review: \(review.text)")
                .padding()
            Text("Ate With:  \(review.person)")
                .padding()
            Text("Would go Again: \(review.eatAgain)")
                .padding()
        }
        }.padding(.all).navigationTitle("Reviews")
    }
    
}
/*
struct ContentView_Previews: PreviewProvider{
    @StateObject  var reviews  = Reviews()
    static var previews: some View {
        //ContentView(reviews: review)
    }
}
*/
