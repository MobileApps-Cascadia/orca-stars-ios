//
//  DetailViewController.swift
//  orcastars
//
//  Created by Joshua Martinez on 5/13/20.
//  Copyright © 2020 James Hayes. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var descLabel: UILabel!
    @IBOutlet var photoView: UIImageView!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var hoursLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    private var cornerRadius: CGFloat = 16  // corner radius for most views
    let customLightBlue = UIColor(red: 190/255, green: 209/255, blue: 224/255, alpha: 1)
    let customBlue = UIColor(red: 5/255, green: 129/255, blue: 198/255, alpha: 1)

    var business: Business?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let business = business {
            navigationItem.title = business.name
            imageView.image = UIImage(named: business.logo)
            nameLabel.text = business.name
            descLabel.text = business.desc
            photoView.image = UIImage(named: business.photo)
            locationLabel.text = business.address + ",\n" + business.city + ", " + business.state + " " + business.zip
            hoursLabel.text = business.hours
            phoneLabel.text = business.phone
            photoView.layer.cornerRadius = cornerRadius
            let gradientlayer = view.setGradientBackground(colorOne: customBlue, colorTwo: customLightBlue)
            view.layer.insertSublayer(gradientlayer, at: 0)
        }
    }
    @IBAction func buttonDirections(_ sender: UIButton){
        print("BUTTON PRESSED")
        if (UIApplication.shared.canOpenURL(NSURL(string: "comgooglemaps://")! as URL)){
            print("Got past IF statement")
            UIApplication.shared.open(NSURL(string: "comgooglemaps://?saddr=&daddr=\(business!.latitude),\(business!.longitude)&directionsmode=driving")! as URL)
            print("finished IF statement")
        }
        else{
            NSLog("Can't use comgooglemaps://");
            print("Didn't work")
        }
    }
}
