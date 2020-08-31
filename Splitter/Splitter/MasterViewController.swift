//
//  MasterViewController.swift
//  Splitter
//
//  Created by Christian Torrico on 8/25/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {



    override func viewDidLoad() {
        super.viewDidLoad()
        print("MASTER")
        // Do any additional setup after loading the view.

    }



    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "cameraView" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let controller = (segue.destination as! UINavigationController).topViewController as! ImagePresentationVC
                controller.image = imageArray[indexPath.row]
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
        else if segue.identifier == "cityView" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let controller = (segue.destination as! UINavigationController).topViewController as! SecondImagePresentVC
                controller.image = imageArray[indexPath.row]
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
        
//                if segue.identifier == "cameraView" {
//                    if let indexPath = tableView.indexPathForSelectedRow {
//                        let controller = (segue.destination as! UINavigationController).topViewController as! ImagePresentationVC
//                        controller.image = imageArray[indexPath.row]
//                        controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
//                        controller.navigationItem.leftItemsSupplementBackButton = true
//                    }
//                }
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel!.text = names[indexPath.row]
        cell.backgroundColor = colorsArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(names[indexPath.row] == "CAMERA"){
            self.performSegue(withIdentifier: "cameraView", sender: self)
        }
        else if (names[indexPath.row] == "CITY"){
            self.performSegue(withIdentifier: "cityView", sender: self)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if let navController = navigationController {
            return (tableView.frame.height - navController.navigationBar.frame.height) / CGFloat(imageArray.count)
        }
        else {
            return (tableView.frame.height - 60) / CGFloat(imageArray.count)
        }
        
    }

}

