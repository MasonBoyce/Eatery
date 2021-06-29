//
//  EateryApp.swift
//  Eatery
//
//  Created by Mason Boyce on 6/25/21.
//

import SwiftUI

@main
struct EateryApp: App {
    @StateObject  var reviews  = Reviews()
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{
                    ContentView(review: reviews.primary)
                }.tabItem {
                    Image(systemName: "pencil.circle")
                    Text("Review")
            }
                NavigationView{
                    MapView()
                }.tabItem {
                    Image(systemName: "map")
                    Text("Map")
            }
            }
            .environmentObject(reviews)
        }
        
    }
}
