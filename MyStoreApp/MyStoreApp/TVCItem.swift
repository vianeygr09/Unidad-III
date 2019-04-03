//
//  TVCItem.swift
//  MyStoreApp
//
//  Created by LABMAC05 on 02/04/19.
//  Copyright © 2019 utng.vianey. All rights reserved.
//

import UIKit


class TVCItem: UITableViewCell {

    
    
    @IBOutlet weak var laStoreName: UILabel!
    @IBOutlet weak var laItemName: UILabel!
    @IBOutlet weak var laDateAdd: UILabel!
    @IBOutlet weak var ivItemImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setItem(item:Items){
        laItemName.text = item.item_name
        laStoreName.text = item.toStoreType?.store_name
        ivItemImage.image = item.image as? UIImage
        
        ///Show date
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "MM/DD/yy h:mm a"
        laDateAdd.text = dateFormat.string(from:
        item.date_add as! Date)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
