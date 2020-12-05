//
//  AboutViewController.swift
//  orcastars
//
//  Created by James Hayes on 8/18/19.
//  Copyright © 2019 James Hayes. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    let customLightBlue = UIColor(red: 190/255, green: 209/255, blue: 224/255, alpha: 1)
    let customBlue = UIColor(red: 5/255, green: 129/255, blue: 198/255, alpha: 1)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let gradientlayer = view.setGradientBackground(colorOne: customBlue, colorTwo: customLightBlue)
        view.layer.insertSublayer(gradientlayer, at: 0)
    }
    
    
    @IBAction func btn_email(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"mailto:orcaconservancy@gmail.com")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func btn_website(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"http://www.orcaconservancy.org/5-2/orca-stars/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func btn_facebook(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"http://www.facebook.com/OrcaConservancy/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func btn_twitter(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"http://www.twitter.com/orcaconservancy/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func btn_instagram(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"http://www.instagram.com/orcaconservancy/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func btn_youtube(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://www.youtube.com/channel/UC4q-CpaiV1KrPCSUpQYXfdg")! as URL, options: [:], completionHandler: nil)
    }
    
}
