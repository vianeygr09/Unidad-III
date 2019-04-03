//
//  ViewController.swift
//  FindMyAge
//
//  Created by macmex on 2/27/19.
//  Copyright © 2019 macmex. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var txtYearOfBiirth: UITextField!
    @IBOutlet weak var lashowAge: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func BuFindDate(_ sender: Any) {
      GetAge()
    }
    
    func GetAge(){
        //fire click of button
        let yearOfBiirth = Int(txtYearOfBiirth.text!)
        //get current year
        let date = Date()
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)
        let personAge = year - yearOfBiirth!
        lashowAge.text = "Your age is \(personAge)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
      //fire sime click of return keybaord
         GetAge()
         self.view.endEditing(true)
        return true
    }
}

