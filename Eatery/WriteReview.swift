//
//  WriteReview.swift
//  Eatery
//
//  Created by Mason Boyce on 7/1/21.
//

import SwiftUI

struct WriteReview: View {
    @State private var Restaurant = ""
    @State private var Star = 1
    @State private var Review = ""
    @State private var menuItem = ""
    @State private var friend = ""
    //let starImage = UIImage(systemName: "star.fill")
    
    var body: some View {
        
        VStack{
                Form{
                    Section{
                        TextField("Restaurant Name", text: $Restaurant)
                    }
                    Section{
                        TextField("Menu Item", text: $menuItem)
                    }
                    //.frame(minWidth: 100, maxWidth: 200, minHeight: 100, maxHeight: .infinity, alignment: .topLeading)
                    .multilineTextAlignment(.leading)
                    Section{
                        Picker("Rating in Stars", selection: $Star){
                            ForEach(1..<6){
                                Text("\($0)") + Text(Image(systemName: "star.fill"))
                            }
                        }
                    }
                    Section{
                        Text("Stars \(Star)")
                    }
                    Section{
                        CameraView()
                    }
                    Section{
                        TextField("Write a review of the food", text: $Review)
                    }
                    Section{
                        TextField("Who did you eat with", text:  $friend)
                    }
                    Button("SUBMIT"){
                        
                        
                    }
            }
        
        }
    }
}

struct WriteReview_Previews: PreviewProvider {
    static var previews: some View {
        WriteReview()
        
    }
}
