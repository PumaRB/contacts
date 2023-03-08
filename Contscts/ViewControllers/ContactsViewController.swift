//
//  ContactsViewController.swift
//  Contscts
//
//  Created by Rimma Katushina on 04/03/2023.
//

import UIKit

class ContactsViewController: UITableViewController {
    var persons = Person.getPersons()
    
    @IBOutlet var labalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let fullName = persons[indexPath.row].fullName
        var content = cell.defaultContentConfiguration()
        content.text = fullName
        cell.contentConfiguration = content
        return cell
    }

    
    // MARK: - Navigation
 
   
    
}
