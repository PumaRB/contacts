//
//  FavoritesViewController.swift
//  Contscts
//
//  Created by Rimma Katushina on 27/02/2023.
//

import UIKit

class FavoritesViewController: UITableViewController {
    var persons = Person.getPersons()

    @IBOutlet var labalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    // MARK: - Table view data source
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            let fullName = persons[indexPath.row].fullName
            var content = cell.defaultContentConfiguration()
            content.text = fullName
            cell.contentConfiguration = content
            return cell
        }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = self.persons[section].fullName
        return section
    }

    }
    
// MARK: - Navigation
