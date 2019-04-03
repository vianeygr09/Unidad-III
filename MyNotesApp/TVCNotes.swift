//
//  TVCNotes.swift
//  MyNotesApp
//
//  Created by LABMAC05 on 28/03/19.
//  Copyright © 2019 utng.vianey. All rights reserved.
//

import UIKit

class TVCNotes: UITableViewCell {

    @IBOutlet weak var buDelete: UIButton!
    
    @IBOutlet weak var buEdit: UIButton!
    @IBOutlet weak var laTitle: UILabel!
    @IBOutlet weak var laDate: UILabel!
    @IBOutlet weak var laDetails: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func SetNotes(note:MyNotes){
        laTitle.text = note.tilte
        laDetails.text = note.details
        
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "MM/dd/yy h:mm a"
        let now = dateFormat.string(from: note.data_save as! Date)
        laDate.text = now
        
    }
    
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
