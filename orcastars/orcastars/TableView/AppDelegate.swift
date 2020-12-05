//
//  AppDelegate.swift
//  orcastars
//
//  Created by Student Account on 8/18/19.
//  Copyright © 2019 James Hayes. All rights reserved.
//

import UIKit
import CoreData


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: Business]?) -> Bool {
        // Override point for customization after application launch.
        print("APP DELEGATE RUNNING")
        // Change the tint color for the page controllers
        let pageController = UIPageControl.appearance()
        pageController.currentPageIndicatorTintColor = .purple
        pageController.pageIndicatorTintColor = .lightGray
        
//        let defaults = UserDefaults.standard
//        let isPreloaded = defaults.bool(forKey: "isPreloaded")
//            if !isPreloaded {
//                preloadData()
//                defaults.set(true, forKey: "isPreloaded")
//            }
        preloadData()
        
        return true
    }


    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "orcastars")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

        var businesses = [Business]()

        func convertCSVIntoArray() {

            //locate the file you want to use
            guard let filepath = Bundle.main.path(forResource: "businessdata", ofType: "csv") else {
                return
            }

            //convert that file into one long string
            var data = ""
            do {
                data = try String(contentsOfFile: filepath)
            } catch {
                print(error)
                return
            }

            //now split that string into an array of "rows" of data.  Each row is a string.
            let rows = data.components(separatedBy: "\n") //change let to var and uncomment line 119 if header row was included in file. In this case, it was already taken out
            print(data)

            //if you have a header row, remove it here
            //rows.removeFirst() already removed it from file

            //now loop around each row, and split it into each of its columns
            for row in rows {
                let columns = row.components(separatedBy: ",")

                //check that we have enough columns
                //if columns.count == 4 {
                let id = Int32(columns[0]) ?? 0
                let category = columns[1]
                let name = columns[2]
                let address = columns[3]
                let city = columns[4]
                let state = columns[5]
                let zip = columns[6]
                let phone = columns[7]
                let longitude = Double(columns[8]) ?? 0.00
                let latitude = Double(columns[9]) ?? 0.00
                let desc = columns[10]
                let hours = columns[11]
                let logo = columns[12]
                let photo = columns[13]
                let logoAltText = columns[14]
                let photoAltText = columns[15]
                
                let business = Business(id: id, category: category, name: name, address: address, city: city, state: state, zip: zip, phone: phone, longitude: longitude, latitude: latitude, desc: desc, hours: hours, logo: logo, photo: photo, logoAltText: logoAltText, photoAltText: photoAltText)
                    businesses.append(business)
                //} //end of if statement
            }
        }
    
    func preloadData () {
        // Retrieve data from the source file
        //if Bundle.main.url(forResource: "businessdata", withExtension: "csv") != nil {
                    for business in businesses {
                        let context = self.persistentContainer.viewContext
                        let businessdata = NSEntityDescription.insertNewObject(forEntityName: "BusinessEntity", into: context) as! BusinessEntity
                        businessdata.id = business.id
                        businessdata.category = business.category
                        businessdata.name = business.name
                        businessdata.address = business.address
                        businessdata.city = business.city
                        businessdata.state = business.state
                        businessdata.zip = business.zip
                        businessdata.phone = business.phone
                        businessdata.longitude = business.longitude
                        businessdata.latitude = business.latitude
                        businessdata.desc = business.desc
                        businessdata.hours = business.hours
                        businessdata.logo = business.logo
                        businessdata.photo = business.photo
                        businessdata.photoAltText = business.photoAltText
                        businessdata.logoAltText = business.logoAltText
                        print("DATA LOADED")
                   // }
        }
    }
     

}
