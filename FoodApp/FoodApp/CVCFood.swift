//
//  CVCFood.swift
//  FoodApp
//
//  Created by LABMAC05 on 22/03/19.
//  Copyright © 2019 utng.vianey. All rights reserved.
//

import UIKit

class CVCFood: UICollectionViewCell {
    
    @IBOutlet weak var iv_FoodImage: UIImageView!
    @IBOutlet weak var laFoodName: UILabel!
    
    func setFood(food:Food){
        iv_FoodImage.image = UIImage(named: food.image!)
        laFoodName.text = food.name!
    }
}
