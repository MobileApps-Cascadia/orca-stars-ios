//
//  RestaurantsTableViewController.swift
//  orcastars
//
//  Created by Joshua Martinez on 5/13/20.
//  Copyright © 2020 James Hayes. All rights reserved.
//

import UIKit
import CoreData

class RestaurantsTableViewController: UITableViewController {

    var businessArray: [NSManagedObject] = []
    let identifier: String = "tableCell"
    let customLightBlue = UIColor(red: 190/255, green: 209/255, blue: 224/255, alpha: 1)
    let customBlue = UIColor(red: 5/255, green: 129/255, blue: 198/255, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        let gradientLayer = view.setGradientBackground(colorOne: customBlue, colorTwo: customLightBlue)
        let bgView = UIView.init(frame: self.tableView.frame)
        bgView.layer.insertSublayer(gradientLayer, at: 0)
        self.tableView.backgroundView = bgView
    }
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
      
      //1
      guard let appDelegate =
        UIApplication.shared.delegate as? AppDelegate else {
          return
      }
      
      let managedContext =
        appDelegate.persistentContainer.viewContext
      
      //2
      let fetchRequest =
        NSFetchRequest<NSManagedObject>(entityName: "BusinessEntity")
      
      //3
      do {
        businessArray = try managedContext.fetch(fetchRequest)
      } catch let error as NSError {
        print("Could not fetch. \(error), \(error.userInfo)")
      }
    }



    // MARK: Segue Method
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "restaurantsDetail",
            let indexPath = tableView?.indexPathForSelectedRow,
            let destinationViewController: DetailViewController = segue.destination as? DetailViewController {
            destinationViewController.business = businessArray[indexPath.row]
        }
    }

}

extension RestaurantsTableViewController {

    func setupUI() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)
        navigationItem.title = "Restaurants"
        tableView.reloadData()
    }

}

// MARK: - UITableView DataSource

// MARK: - UITableViewDataSource

extension RestaurantsTableViewController{
    override func tableView(_ tableView: UITableView,
                 numberOfRowsInSection section: Int) -> Int {
    return businessArray.count
  }

    override func tableView(_ tableView: UITableView,
                 cellForRowAt indexPath: IndexPath)
                 -> UITableViewCell {

    let business = businessArray[indexPath.row]
    let cell =
      tableView.dequeueReusableCell(withIdentifier: "Cell",
                                    for: indexPath)
    cell.textLabel?.text =
      business.value(forKeyPath: "name") as? String
    return cell
  }
}


// MARK: - UITableView Delegate

//code to delete items in table, which we don't need
//extension RestaurantsTableViewController {
//
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            restaurants.remove(at: indexPath.row)
//            tableView.deleteRows(at: [indexPath], with: .bottom)
//        }
//    }
//
//}
