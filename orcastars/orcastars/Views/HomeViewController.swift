//
//  HomeViewController.swift
//  orcastars
//
//  Created by James Hayes on 8/18/19.
//  Copyright © 2019 James Hayes. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var businessArray = Business.convertCSVIntoArray()
    var specificBusinessArray: [Business] = []
    @IBOutlet weak var restaurantButton: UIButton!
    @IBOutlet weak var nightlifeButton: UIButton!
    @IBOutlet weak var medicalButton: UIButton!
    @IBOutlet weak var shoppingButton: UIButton!
    @IBOutlet weak var autoButton: UIButton!
    @IBOutlet weak var maintenanceButton: UIButton!
    @IBOutlet weak var servicesButton: UIButton!
    var tableTitle: String = ""
    // outlets to the menu button, searchbar,a and gradiant view
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var searchBar: UITextField!
//    @IBOutlet weak var LDGradientView: LDGradientView!
    @IBOutlet weak var orcaImageView: UIImageView!
    private var cornerRadius: CGFloat = 16  // corner radius for most views
    let customLightBlue = UIColor(red: 190/255, green: 209/255, blue: 224/255, alpha: 1)
    let customBlue = UIColor(red: 5/255, green: 129/255, blue: 198/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        orcaImageView.layer.cornerRadius = cornerRadius
        searchBar.layer.cornerRadius = searchBar.frame.height / 2
        searchBar.clipsToBounds = true
        let gradientlayer = view.setGradientBackground(colorOne: customBlue, colorTwo: customLightBlue)
        view.layer.insertSublayer(gradientlayer, at: 0)
    }
//
    @IBAction func allButtons (_ sender: Any) {
        performSegue(withIdentifier: "segueToBusinessList", sender: sender)
    }
//    @IBAction func restaurantButton(_ sender: UIButton) {
//        for row in businessArray{
//            if (row.category == "restaurant"){
//                specificBusinessArray.append(row)
//            }
//        }
//        destinationViewController.specificBusinessArray = specificBusinessArray
//        destinationViewController.tableTitle = "Restaurant"
//    }
//
//    @IBAction func nightlifeButton(_ sender: UIButton){
//        for row in businessArray{
//            if (row.category == "bars"){
//                specificBusinessArray.append(row)
//            }
//        }
//        tableTitle = "Bars & Nightlife"
//    }
//    @IBAction func medicalButton(_ sender: UIButton){
//        for row in businessArray{
//            if (row.category == "health"){
//                specificBusinessArray.append(row)
//            }
//        }
//        tableTitle = "Health & Medical"
//    }
//    @IBAction func shoppingButton(_ sender: UIButton){
//        for row in businessArray{
//            if (row.category == "shopping"){
//                specificBusinessArray.append(row)
//            }
//        }
//        tableTitle = "Shopping"
//    }
//    @IBAction func autoButton(_ sender: UIButton){
//        for row in businessArray{
//            if (row.category == "auto"){
//                specificBusinessArray.append(row)
//            }
//        }
//        tableTitle = "Automotives"
//    }
//    @IBAction func maintenanceButton(_ sender: UIButton){
//        for row in businessArray{
//            if (row.category == "maintenance"){
//                specificBusinessArray.append(row)
//            }
//        }
//        tableTitle = "Home Maintenance"
//    }
//    @IBAction func servicesButton(_ sender: UIButton){
//        for row in businessArray{
//            if (row.category == "service"){
//                specificBusinessArray.append(row)
//            }
//        }
//        tableTitle = "Professional Services"
//    }
//
    
    


    // MARK: Segue Method
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        specificBusinessArray = []
        if segue.identifier == "segueToBusinessList"{
            //print("IDENTIFIED")
            if let button = sender as? UIButton{
            let destinationViewController = segue.destination as? RestaurantsTableViewController
                //print("VARIABLES DEFINED")
                let category: String
                switch button{
                case restaurantButton: category = "restaurant"
                case nightlifeButton: category = "bars"
                case medicalButton: category = "health"
                case shoppingButton: category = "shopping"
                case autoButton: category = "auto"
                case maintenanceButton: category = "maintenance"
                case servicesButton: category = "service"
                default:
                    category = ""
                }
                for row in businessArray{
                if (row.category == category){
                    specificBusinessArray.append(row)
                }
            }
            //print(specificBusinessArray)
            //destinationViewController?.tableTitle = "Restaurants"
            destinationViewController?.specificBusinessArray = specificBusinessArray
        
        }
        }
    }


    
    
//    //outlets to the orcastar of the month ImageView and main View
//    @IBOutlet weak var osomImageView: UIImageView!
//    @IBOutlet weak var osomView: UIView!
//    private var shadowColor: UIColor = UIColor.black    // shadow color
//
//
//    @IBOutlet weak var contentView: UIView! // reference outlet to the page controller content view
//
//    // dummy data for the page view controller
//    let dataSource = ["Article One", " Article Two", "Article Three", "Article Four" ]
//
//    var currentViewControllerIndex = 0  // keep track of the current page the page controller is at
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // setup the pageview controller
//        configurePageViewController()
//
//        // round the top-left and top-right corners of the orcastar of the month card image
//        osomImageView.roundCorners(cornerRadius: 19)
//
//        // make the search bar have rounded corners
//        searchBar.clipsToBounds = true
//        searchBar.layer.cornerRadius = cornerRadius
//
//        // give the orcastar of the month card have rounded corners
//        osomView.clipsToBounds = true
//        osomView.layer.cornerRadius = cornerRadius
//
//        // add drop-shadow to osomView
//        displayShadow(view: osomView)
//
//        // Do any additional setup after loading the view.
//
//    }
//
//    // function for adding a drop-shadow effect to a UIView component
//    func displayShadow(view: UIView) {
//        view.layer.masksToBounds = false
//        view.layer.shadowColor = shadowColor.cgColor
//        view.layer.shadowOpacity = 0.2
//        view.layer.shadowOffset = CGSize(width: 0, height: 1)
//        view.layer.shadowRadius = 3
//        view.layer.shadowPath = UIBezierPath(roundedRect: view.bounds, cornerRadius: cornerRadius).cgPath
//        view.layer.shouldRasterize = true
//        view.layer.rasterizationScale = UIScreen.main.scale
//    }
//
//    func configurePageViewController() {
//
//        guard let pageViewController = storyboard?.instantiateViewController(withIdentifier: String(describing: CustomPageViewController.self)) as? CustomPageViewController else {
//            return
//        }
//
//        pageViewController.delegate = self
//        pageViewController.dataSource = self
//
//        addChild(pageViewController)
//        pageViewController.didMove(toParent: self)
//
//        // programtic constraints in content view
//        pageViewController.view.translatesAutoresizingMaskIntoConstraints = false
//
//        contentView.addSubview(pageViewController.view)
//
//        let views: [String: Any] =  ["pageView": pageViewController.view!]
//
//        // constraint for keeping the 'dataSource' Horizontally flush against the contentViews dimensions
//        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[pageView]-0-|",
//                                                                 options: NSLayoutConstraint.FormatOptions(rawValue: 0),
//                                                                 metrics: nil,
//                                                                 views: views))
//        // contraint for keeping the 'dataSource' Vertically flush against the contentViews dimensions
//        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[pageView]-0-|",
//                                                                 options: NSLayoutConstraint.FormatOptions(rawValue: 0),
//                                                                 metrics: nil,
//                                                                 views: views))
//
//        guard let startingViewController = detailViewControllerAt(index: currentViewControllerIndex) else {
//            return
//        }
//
//        pageViewController.setViewControllers([startingViewController], direction: .forward, animated: true)
//
//    }
//
//    func detailViewControllerAt(index: Int) -> DataViewController? {
//
//        if (index > dataSource.count || dataSource.count == 0) {
//            return nil
//        }
//
//        guard let dataViewController = storyboard?.instantiateViewController(withIdentifier: String(describing: DataViewController.self)) as? DataViewController else {
//            return nil
//        }
//
//        // present the data from the dataSource array
//        dataViewController.index = index
//        dataViewController.displayText  = dataSource[index]
//
//        return dataViewController
//    }
//}
//
//extension UIView {
//    func roundCorners(cornerRadius: Double) {
//        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
//        let maskLayer = CAShapeLayer()
//        maskLayer.frame = self.bounds
//        maskLayer.path = path.cgPath
//        self.layer.mask = maskLayer
//    }
//}
//
//
//extension HomeViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource {
//
//    // return the index the page controller is on
//    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
//        return currentViewControllerIndex
//    }
//
//    // returns the number of 'pages' there will be
//    func presentationCount(for pageViewController: UIPageViewController) -> Int {
//        return dataSource.count
//    }
//
//    // decrement the page controller
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
//
//        let dataViewController = viewController as? DataViewController
//
//        guard var currentIndex = dataViewController?.index else {
//            return nil
//        }
//
//        currentViewControllerIndex = currentIndex
//
//        if (currentIndex == 0) {
//            return nil
//        }
//
//        currentIndex -= 1
//
//        return detailViewControllerAt(index: currentIndex)
//    }
//
//    // increment the page controller
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
//
//        let dataViewController = viewController as? DataViewController
//
//        guard var currentIndex = dataViewController?.index else {
//            return nil
//        }
//
//        if (currentIndex == dataSource.count-1) {
//            return nil
//        }
//
//        currentIndex += 1
//        currentViewControllerIndex = currentIndex
//
//        return detailViewControllerAt(index: currentIndex)
//    }
//
}

