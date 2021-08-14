//
//  writeToPlist.swift
//  Eatery
//
//  Created by Mason Boyce on 7/9/21.
//
/*
import Foundation
class  writeToPlist{
    init(){
let reviewExample = Review(
id: 1, restaurant: "Mom's Spaghetti", stars: 5, text: "The absolutely gorgeous dish that absolutely will knock your socks off. The Spagheetti carbonara was absolutely devine. It is so flavorful and creamy without cream and I absolutely love it and the bacon", photo: "Carbonara", menuItem: "carbonara",person: "Max", eatAgain: "Absolutely", latitude: 40.720911189049296, longitude:  -73.95672412399145)
    

       
let propertyListEncoder = PropertyListEncoder()
let encodedReview = try? propertyListEncoder.encode(reviewExample)

        
let propertyListDecoder = PropertyListDecoder()
let decodedReview = try? propertyListDecoder
        reviewExample.decode(Review.self, from: encodedReview ?? reviewExample)
        
let documentsDirectory =
FileManager.default.urls(for: .documentDirectory,
in: .userDomainMask).first!
let archiveURL =
documentsDirectory.appendingPathComponent("death")
   .appendingPathExtension("plist")
try? encodedReview?.write(to: archiveURL,options: .noFileProtection)
    }
    
    
    
    
    
    
    
    /*
    init( inputid: Int,inputrestaurant: String,inputstars: Double,inputtext: String,inputphoto: String,inputmenuItem: String,inputperson: String,inputeatAgain: String,inputlatitude: Double, inputlongitude: Double){
let reviewExample = Review(
    id: inputid, restaurant: inputrestaurant, stars: inputstars, text: inputtext, photo:inputphoto, menuItem: inputmenuItem ,person: inputperson, eatAgain: inputeatAgain, latitude: inputlatitude, longitude:  inputlongitude)

    }*/
}


*/
