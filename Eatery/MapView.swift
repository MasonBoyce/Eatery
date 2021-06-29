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
            latitude: -74.00774295882294,
            longitude:40.71459208043575
            ),
        span: MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2)
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
