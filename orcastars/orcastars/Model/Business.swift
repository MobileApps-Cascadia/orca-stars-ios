//
//  Business.swift
//  orcastars
//
//  Created by Student Account on 11/3/20.
//  Copyright © 2020 James Hayes. All rights reserved.
//

import Foundation

struct Business {
//    let id: Int
//    let category: String
//    let name: String
//    let address: String
//    let city: String
//    let state: String
//    let zip: String
//    let phone: String
//    let longitude: Double
//    let latitude: Double
//    let desc: String
//    let hours: String
//    let logo: String
//    let photo: String
//    let logoAltText: String
//    let photoAltText: String
    var id: Int32
    var category: String
    var name: String
    var address: String
    var city: String
    var state: String
    var zip: String
    var phone: String
    var longitude: Double
    var latitude: Double
    var desc: String
    var hours: String
    var logo: String
    var photo: String
    var logoAltText: String
    var photoAltText: String
    }

extension Business{
    static func convertCSVIntoArray() -> [Business]{
        var businesses = [Business]()

        //locate the file you want to use
        guard let filepath = Bundle.main.path(forResource: "businessdata", ofType: "csv") else {
            return []
        }
        print(filepath)

        var data = ""
        do {
            data = try String(contentsOfFile: filepath )
        } catch {
            print(error)
            return []
        }

        //now split that string into an array of "rows" of data.  Each row is a string.
        let rows = data.components(separatedBy: "\n") //change let to var and uncomment line 119 if header row was included in file. In this case, it was already taken out
        print(data)

        //if you have a header row, remove it here
        //rows.removeFirst() already removed it from file

        //now loop around each row, and split it into each of its columns
        var rowcount = 0
        for row in rows{
            let columns = row.components(separatedBy: ";")
            if (rowcount == rows.count - 1){
                //this accounts for the empty row at the end of the csv file
                //do nothing
            }
            else{
            rowcount += 1
            
            let id = Int32(columns[0]) ?? 0
            let category = columns[1]
            let name = columns[2]
            let address = columns[3]
            let city = columns[4]
            let state = columns[5]
            let zip = columns[6]
            let phone = columns[7]
            let longitude = Double(columns[8]) ?? 0.00
            let latitude = Double(columns[9]) ?? 0.00
            let desc = columns[10]
            let hours = columns[11]
            let logo = columns[12]
            let photo = columns[13]
            let logoAltText = columns[14]
            let photoAltText = columns[15]
            
            let business = Business(id: id, category: category, name: name, address: address, city: city, state: state, zip: zip, phone: phone, longitude: longitude, latitude: latitude, desc: desc, hours: hours, logo: logo, photo: photo, logoAltText: logoAltText, photoAltText: photoAltText)
                businesses.append(business)
        }
        }
        return businesses
    }
}



//struct Address {
//    let address1: String
//    let address2: String?
//    let city: String
//    let state: String
//    let zip: String
//}
//
//struct Business {
//    let id: String
//    let category: String
//    let name: String
//    let address: Address?
//    let phone: [Phone]
//    let photos: [Photo]
//    let location: Coordinates?
//    let logo: Photo?
//    let description: String?
//    let hours: [String]?
//}
//
//struct Coordinates {
//    let longitude: Double
//    let latitude: Double
//}
//
//struct Photo {
//    let url: String
//    let altText: String?
//}
//
//struct Phone {
//    let number: String
//    let type: String
//}
//
//
//
