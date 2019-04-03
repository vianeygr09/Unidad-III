//
//  VCListItems.swift
//  MyStoreApp
//
//  Created by LABMAC05 on 02/04/19.
//  Copyright © 2019 utng.vianey. All rights reserved.
//

import UIKit
import CoreData
class VCListItems: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var tableViewItems: UITableView!
    var listOfItems = [Items]()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadItems()
        tableViewItems.delegate = self
        tableViewItems.dataSource = self
        // Do any additional setup after loading the view.
    }

    func loadItems(){
        let fetchRequest: NSFetchRequest<Items> = Items.fetchRequest()
        do{
            listOfItems = try context.fetch(fetchRequest)
        }catch{
            print("cannot load stores")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //tableview
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfItems.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath) as! TVCItem
        cell.setItem(item: listOfItems[indexPath.row])
        return cell
    }
}
