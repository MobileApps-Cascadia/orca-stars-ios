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
}

extension Restaurants {
    static func createRestaurants() -> [Restaurants] {
        return [Restaurants(name: "Fishfood X", thumbnails: "fishfood_x.png"),
                Restaurants(name: "The Green Bean", thumbnails: "the_green_bean.png"),
                Restaurants(name: "StarStuck", thumbnails: "starstuck.png"),
                Restaurants(name: "Grillbits", thumbnails: "grillbys.png"),
                Restaurants(name: "Another Sushi Place", thumbnails: "another_sushi_place"),
                Restaurants(name: "BurgerBox", thumbnails: "burgerbox.png"),
                Restaurants(name: "Metatonic Cafe", thumbnails: "mtt_cafe.png"),
                Restaurants(name: "RestStop #1", thumbnails: "orca_stars.png"),
                Restaurants(name: "Verdant Drink", thumbnails: "orca_stars.png"),
                Restaurants(name: "Jora's Brunch", thumbnails: "orca_stars.png"),
                Restaurants(name: "Ty's Thai Food", thumbnails: "orca_stars.png"),
        
        ]
    }
}

