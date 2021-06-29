//
//  MapView.swift
//  Eatery
//
//  Created by Mason Boyce on 6/28/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    @EnvironmentObject var reviews: Reviews
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 40.718230031858916,
            longitude: -73.97590037077639
            ),
        span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        )
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: reviews.listReview){
            review in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: review.latitude, longitude: review.longitude)){
                NavigationLink(destination: ContentView(review:review)
                ){
                        Text(review.restaurant)
                    }
            }
        }.navigationTitle("map")
    }
}


struct MapView_Previews: PreviewProvider {
    
    static var previews: some View {
        MapView()
    }
}
