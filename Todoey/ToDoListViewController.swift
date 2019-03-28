//
//  ToDoListViewController.swift
//  Todoey
//
//  Created by Ivano Giuseffi on 28/03/2019.
//  Copyright © 2019 Ivano Giuseffi. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    //
    let itemArray = ["Find Mike", "Buy eggs", "Destroy Demogorgon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK -  Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Created an objcet of UITableViewCell's class
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        //Use the text property of textLabel to set the text equal to the item of itemArray
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    //Mark - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Set checkmark like accesory type of cells
        //tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark
        
        //If the selected cell has .checkmark like accessory type, it will change in .none
        if  tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        //with this, every time that click on a row, in will be deselect
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

