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
    let starImage = UIImage(systemName: "star.fill")
    
    var body: some View {
        ScrollView{
            NavigationView{
                Form{
                    Section{
                        TextField("Restaurant Name", text: $Restaurant)
                    }
                    //.frame(minWidth: 100, maxWidth: 200, minHeight: 100, maxHeight: .infinity, alignment: .topLeading)
                    .multilineTextAlignment(.leading)
                    Section{
                        Picker("Rating in Stars", selection: $Star){
                            ForEach(1..<6){
                                Text("\($0)") + Text(Image(systemName: "star.fill"))
                            }
                        }//.pickerStyle(SegmentedPickerStyle())
                    }
                    Section{
                        Text("Stars \(Star)")
                    }
                    Section{
                        Text("select photo of food")
                        //CameraView()
                    }
                    
                    
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
