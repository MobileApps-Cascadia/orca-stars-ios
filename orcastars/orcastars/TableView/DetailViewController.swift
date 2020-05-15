//
//  DetailViewController.swift
//  orcastars
//
//  Created by Joshua Martinez on 5/13/20.
//  Copyright © 2020 James Hayes. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!

    var restaurants: Restaurants?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let restaurants = restaurants {
            navigationItem.title = restaurants.name
            imageView.image = UIImage(named: restaurants.thumbnails)
            nameLabel.text = restaurants.name
        }
    }
}
