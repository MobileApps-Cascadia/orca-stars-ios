//
//  MoreMenuViewController.swift
//  orcastars
//
//  Created by Mac Computer on 6/5/20.
//  Copyright © 2020 James Hayes. All rights reserved.
//

import Foundation
import UIKit

class MoreMenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    
    private var cornerRadius: CGFloat = 16  // corner radius for most views
    let customLightBlue = UIColor(red: 190/255, green: 209/255, blue: 224/255, alpha: 1)
    let customBlue = UIColor(red: 5/255, green: 129/255, blue: 198/255, alpha: 1)
    
    let categoriesArray = ["Restaurants", "Bar & NightLife", "Shopping", "Health & Medical", "Home Maintenence", "Professional Service", "Auto", "Hotel & Travel", "Pets", "Financial Service", "Mass Media", "Education"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = view.setGradientBackground(colorOne: customBlue, colorTwo: customLightBlue)
        let bgView = UIView.init(frame: self.myTableView.frame)
        bgView.layer.insertSublayer(gradientLayer, at: 0)
        self.myTableView.backgroundView = bgView
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    
    //self.tableView.frame
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoriesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel!.text = categoriesArray[indexPath.row]
        return cell
    }
    
}

