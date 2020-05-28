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
    @IBOutlet var descLabel: UILabel!
    @IBOutlet var photoView: UIImageView!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var hoursLabel: UILabel!
    private var cornerRadius: CGFloat = 16  // corner radius for most views
    let customLightBlue = UIColor(red: 190/255, green: 209/255, blue: 224/255, alpha: 1)
    let customBlue = UIColor(red: 5/255, green: 129/255, blue: 198/255, alpha: 1)

    var restaurants: Restaurants?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let restaurants = restaurants {
            navigationItem.title = restaurants.name
            imageView.image = UIImage(named: restaurants.thumbnails)
            nameLabel.text = restaurants.name
            descLabel.text = restaurants.description
            photoView.image = UIImage(named: restaurants.photo)
            locationLabel.text = restaurants.location
            hoursLabel.text = restaurants.hours
            photoView.layer.cornerRadius = cornerRadius
            let gradientlayer = view.setGradientBackground(colorOne: customBlue, colorTwo: customLightBlue)
            view.layer.insertSublayer(gradientlayer, at: 0)
        }
    }
}
