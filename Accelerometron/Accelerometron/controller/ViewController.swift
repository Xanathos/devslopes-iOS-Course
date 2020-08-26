//
//  ViewController.swift
//  Accelerometron
//
//  Created by Christian Torrico on 8/21/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "parallaxCell", for: indexPath) as? ParallaxCell{
            if let image = imageArray[indexPath.row] {
                cell.configureCell(withImage: image, andDescription: names[indexPath.row])
            }
            
            return cell
        }
        else {
            return UITableViewCell()
        }
    }
}

