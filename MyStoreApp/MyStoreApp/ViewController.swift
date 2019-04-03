//
//  ViewController.swift
//  MyStoreApp
//
//  Created by LABMAC05 on 29/03/19.
//  Copyright © 2019 utng.vianey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtStoreName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func buAddStore(_ sender: Any) {
        //TODO: Add Store
        let newStore = StoreType(context: context)
        newStore.store_name = txtStoreName.text
        do{
           try ad.saveContext()
            txtStoreName.text = ""
        }catch{
            print ("cannot save record")
        }
    }
    
    @IBAction func buBack(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
}

