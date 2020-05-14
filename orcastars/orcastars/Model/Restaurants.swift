//
//  Restaurants.swift
//  orcastars
//
//  Created by Joshua Martinez on 5/13/20.
//  Copyright © 2020 James Hayes. All rights reserved.
//

import Foundation

struct Restaurants {
    let name: String
    let thumbnails: String
    let prepTime: String
}

extension Restaurants {
    static func createRestaurants() -> [Restaurants] {
        return [Restaurants(name: "Hyderabadi Biryani", thumbnails: "biriyani.jpg", prepTime: "3 hour"),
                Restaurants(name: "South Indian Dosa", thumbnails: "dosa.jpg", prepTime: "30 min"),
                Restaurants(name: "Fish Fry", thumbnails: "fish fry.jpg", prepTime: "1 hour"),
                Restaurants(name: "Chicken Chettinad", thumbnails: "chicken.jpg", prepTime: "90 min"),
                Restaurants(name: "Olan", thumbnails: "olan.jpg", prepTime: "40 min"),
                Restaurants(name: "White Chocolate Donut", thumbnails: "white_chocolate_donut.jpg", prepTime: "1 hour"),
                Restaurants(name: "Starbucks Coffee", thumbnails: "starbucks_coffee.jpg", prepTime: "2 hour"),
                Restaurants(name: "Gongura Mamsam", thumbnails: "mutton.jpg", prepTime: "3 hour"),
                Restaurants(name: "Instant Noodle with Egg", thumbnails: "Instant Noodle with Egg.jpg", prepTime: "65 min"),
                Restaurants(name: "Green Tea", thumbnails: "green_tea.jpg", prepTime: "25 min"),
                Restaurants(name: "Sushi", thumbnails: "sushi.jpg", prepTime: "1.5 hour"),
                Restaurants(name: "Harry Poter Birthday Cake", thumbnails: "harry.jpg", prepTime: "2 hour"),
                Restaurants(name: "Maharaja Burger veg", thumbnails: "veg-maharaja-mac.jpg", prepTime: "35 min")]
    }
}

