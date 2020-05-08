//
//  UIView+Extension.swift
//  orcastars
//
//  Created by Student Account on 5/7/20.
//  Copyright © 2020 James Hayes. All rights reserved.
//

import Foundation
import UIKit
extension UIView{
    func setGradientBackground(colorOne: UIColor, colorTwo: UIColor){
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [-0.6, 0.5] //first: position from the center, second: amount of gradient to endpoint
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
