//
//  HomeViewController.swift
//  orcastars
//
//  Created by James Hayes on 8/18/19.
//  Copyright © 2019 James Hayes. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UITextField!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        searchBar.clipsToBounds = true
        searchBar.layer.cornerRadius = 20
        
        
        pageControl.layer.shadowColor = UIColor.black.cgColor
        pageControl.layer.shadowPath = UIBezierPath(rect: pageControl.bounds).cgPath
        pageControl.layer.shouldRasterize = true
        
        let width: CGFloat = 375
        let height: CGFloat = 37
        let shadowSize: CGFloat = 10
        let contactRect = CGRect(x: 0, y: height - (shadowSize * 0.4), width: width, height: shadowSize)
        
        pageControl.layer.shadowPath = UIBezierPath(ovalIn: contactRect).cgPath
        pageControl.layer.shadowRadius = 5
        pageControl.layer.shadowOpacity = 0.25
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
