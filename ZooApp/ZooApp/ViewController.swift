//
//  ViewController.swift
//  ZooApp
//
//  Created by LABMAC05 on 08/03/19.
//  Copyright © 2019 utng.vianey. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    var listOfKillerAnimals = [Animal]()
    var listOfNotKillerAnimals = [Animal]()
    var Animaltype = ["Not Killer", "Killer"]
    @IBOutlet weak var tvListAnimals: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        listOfKillerAnimals.append(Animal(name: "ballena", des: "live in big place with tree...", image: "ballena"))
        listOfNotKillerAnimals.append(Animal(name: "cangrejo", des: "live in big place with tree...", image: "cangrejo"))
        listOfKillerAnimals.append(Animal(name: "caracol", des: "live in big place with tree...", image: "caracol"))
        listOfNotKillerAnimals.append(Animal(name: "gorilla", des: "live in big place with tree...", image: "gorila"))
        listOfKillerAnimals.append(Animal(name: "medusa", des: "live in big place with tree...", image: "medusa"))
        listOfKillerAnimals.append(Animal(name: "pato", des: "live in big place with tree...", image: "pato"))
        listOfKillerAnimals.append(Animal(name: "pulpo", des: "live in big place with tree...", image: "pulpo"))
        listOfNotKillerAnimals.append(Animal(name: "venado", des: "live in big place with tree...", image: "venado"))
        
        tvListAnimals.delegate = self
        tvListAnimals.dataSource = self
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Animaltype[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return listOfNotKillerAnimals.count
        }else{
            return listOfKillerAnimals.count
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellAnimal:TVCAnimal = tableView.dequeueReusableCell(withIdentifier: "cellAnimal",
                                                                 for: indexPath) as! TVCAnimal
        if indexPath.section == 0 {
            cellAnimal.SetAnimal(animal: listOfNotKillerAnimals[indexPath.row])
        }else{
           cellAnimal.SetAnimal(animal: listOfKillerAnimals[indexPath.row])
        }
        
        return cellAnimal
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section==0 {
            print(listOfNotKillerAnimals[indexPath.row].image!)
           listOfNotKillerAnimals.remove(at: indexPath.row)
        //listOfNotKillerAnimals.append(listOfNotKillerAnimals[indexPath.row])
        }else{
            print(listOfKillerAnimals[indexPath.row].name!)
            listOfKillerAnimals.remove(at: indexPath.row)
           // listOfKillerAnimals.append(listOfKillerAnimals[indexPath.row])
        }
        
        tvListAnimals.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

