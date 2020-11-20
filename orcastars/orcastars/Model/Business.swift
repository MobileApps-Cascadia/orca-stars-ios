//
//  Business.swift
//  orcastars
//
//  Created by Student Account on 11/3/20.
//  Copyright © 2020 James Hayes. All rights reserved.
//

import Foundation

struct Address {
    let address1: String
    let address2: String?
    let city: String
    let state: String
    let zip: String
}

struct Business {
    let id: String
    let category: String
    let name: String
    let address: Address?
    let phone: [Phone]
    let photos: [Photo]
    let location: Coordinates?
    let logo: Photo?
    let description: String?
    let hours: [String]?
}

struct Coordinates {
    let longitude: Double
    let latitude: Double
}

struct Photo {
    let url: String
    let altText: String?
}

struct Phone {
    let number: String
    let type: String
}



