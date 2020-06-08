//
//  MoreMenuViewController.swift
//  orcastars
//
//  Created by Mac Computer on 6/5/20.
//  Copyright © 2020 James Hayes. All rights reserved.
//

import Foundation
import UIKit

class MoreMenuViewController: UIViewController {
    
    private var cornerRadius: CGFloat = 16  // corner radius for most views
    let customLightBlue = UIColor(red: 190/255, green: 209/255, blue: 224/255, alpha: 1)
    let customBlue = UIColor(red: 5/255, green: 129/255, blue: 198/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientlayer = view.setGradientBackground(colorOne: customBlue, colorTwo: customLightBlue)
        view.layer.insertSublayer(gradientlayer, at: 0)
    }
}
