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
    let description: String
    let photo: String
    let location: String
    let hours: String
    let latitude: Double
    let longitude: Double
}

extension Restaurants {
    static func createRestaurants() -> [Restaurants] {
        return [Restaurants(name: "Fishfood X", thumbnails: "fishfood_x.png", description: "Fishfood X is dedicated to supoorting sustainable fishing, and giving back by donating to the Orca Conservancy. All ingredients are 100% organic and ethically sourced.", photo: "sushi.png", location: "Bothell, WA", hours: "9am-9pm, Mon-Fri", latitude: 47.6605698, longitude: -122.2060817),
                Restaurants(name: "The Green Bean", thumbnails: "the_green_bean.png", description: "The Green Bean is a tea and coffee shop that supports sustainable practices. Every item we provide is biodegradable or recyclable. No more water pollution!", photo: "inharmony.png", location: "Bothell, WA", hours: "9am-9pm, Mon-Fri", latitude: 47.6172469, longitude: -122.3495414),
                Restaurants(name: "StarStuck", thumbnails: "starstuck.png", description: "StarStuck supports sustainable businesses and donates to non-profit organizations that help clean out the water of plastic.", photo: "hobbit.png", location: "Bothell, WA", hours: "9am-9pm, Mon-Fri", latitude: 47.5976249, longitude: -122.3283409),
                Restaurants(name: "Grillbits", thumbnails: "grillbys.png", description: "We here at Grillbits are determined to keep our environment and our orcas safe! All our ingredients are also from sustainable farmers.", photo: "hobbit.png", location: "Bothell, WA", hours: "9am-9pm, Mon-Fri", latitude: 47.7216215, longitude: -122.2072862),
                Restaurants(name: "Another Sushi Place", thumbnails: "another_sushi_place", description: "All our fish are sourced only from sustainable fisheries, to keep the orcas fed and happy.", photo: "sushi.png", location: "Bothell, WA", hours: "9am-9pm, Mon-Fri", latitude: 47.6159022, longitude: -122.337206),
                Restaurants(name: "BurgerBox", thumbnails: "burgerbox.png", description: "25% of all proceeds go to the Orca Conservancy, and other sustainable businesses that are working hard to protect our orcas.", photo: "hobbit.png", location: "Bothell, WA", hours: "9am-9pm, Mon-Fri", latitude: 47.5809833, longitude: -122.3856571),
                Restaurants(name: "Metatonic Cafe", thumbnails: "mtt_cafe.png", description: "Metatonic Cafe is determined to keep our orcas around! Everything is recyclable and reusable! No more plastic pollution!", photo: "hobbit.png", location: "Bothell, WA", hours: "9am-9pm, Mon-Fri", latitude: 47.6592373, longitude: -122.3667101),
                Restaurants(name: "RestStop #1", thumbnails: "orca_stars.png", description: "RestStop #1 is the #1 place for sustainable food on the go! We also pride ourselves in using only reusable, recyclable, and compoletely biodegradable tableware!", photo: "hobbit.png", location: "Bothell, WA", hours: "9am-9pm, Mon-Fri", latitude: 47.6204561, longitude: -122.347186),
                Restaurants(name: "Verdant Drink", thumbnails: "orca_stars.png", description: "We have many salads and teas! All of our veggies come from sustainable and zero-pollution farms and orchards! Our salads are protecting the environment!", photo: "hobbit.png", location: "Bothell, WA", hours: "9am-9pm, Mon-Fri", latitude: 47.6106279, longitude: -122.33883734),
                Restaurants(name: "Jora's Brunch", thumbnails: "orca_stars.png", description: "Jora's Brunch is proud of supplying only from local and sustainable businesses, and donating to the Orca Conservancy and their cause!", photo: "hobbit.png", location: "Bothell, WA", hours: "9am-9pm, Mon-Fri", latitude: 47.5455021, longitude: -122.2860225),
                Restaurants(name: "Ty's Thai Food", thumbnails: "orca_stars.png", description: "Ty's Tie's Thai food is sustainable, cruelty-free, 100% organic, zero-waste, and biodegradable! We are proud protectors of our orca friends!", photo: "hobbit.png", location: "Bothell, WA", hours: "9am-9pm, Mon-Fri", latitude: 47.6667598, longitude: -122.317265),
        
        ]
    }
}

