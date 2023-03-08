//
//  TabBarController.swift
//  Contscts
//
//  Created by Rimma Katushina on 03/03/2023.
//

import UIKit

class TabBarController: UITabBarController {
    
    var persons = Person.getPersons()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let navigationVC = navigationController else {return}
        let viewControllers = navigationVC.viewControllers
                
        viewControllers.forEach { viewController in
            if let contactsVC = viewController as? ContactsViewController {
                contactsVC.persons = persons
                
            }
            if let favoriteVC = viewController as? ContactsViewController {
                favoriteVC.persons = persons
                
            }
        }
  
    }
}
