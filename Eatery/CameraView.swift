//
//  CameraView.swift
//  Eatery
//
//  Created by Mason Boyce on 7/3/21.
//Used

import SwiftUI

struct CameraView: View {
    @State var imageData: Data = .init(capacity: 0)
    @State private var showSheet = false
    @State var showImagePicker = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    @State private var image : UIImage?
    
    var body: some View {
        NavigationView{
            VStack{
                Image(uiImage: image ?? UIImage(named: "placeholder")!)
                    .resizable()
                    .frame(width: 300, height: 300)
                Button("Choose picture"){
                    self.showSheet = true
                }
                .padding()
                .actionSheet(isPresented: $showSheet){
                    ActionSheet(title: Text("Select Photos"), message: Text("Choose"), buttons: [
                        .default(Text("Photo Library")){
                            self.showImagePicker = true
                            self.sourceType = .photoLibrary
                        },
                        .default(Text("Camera")){
                            self.showImagePicker = true
                            self.sourceType = .camera
                        },
                        .cancel()
                    ])
                }
            }.navigationTitle("Choose Picture")
        }.sheet(isPresented: $showImagePicker){
            ImagePicker(image: self.$image,isShown: self.$showImagePicker, sourceType: self.sourceType)
        }
        
    }

    }



struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
