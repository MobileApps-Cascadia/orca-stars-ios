//
//  DataViewController.swift
//  orcastars
//
//  Created by James Hayes on 8/19/19.
//  Copyright © 2019 James Hayes. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    var displayText: String?
    var index: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayLabel.text = displayText
        // Do any additional setup after loading the view.
    }

}
