//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Christian Torrico on 7/27/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryTitle : UILabel!
    
    func updateViews(category : Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
