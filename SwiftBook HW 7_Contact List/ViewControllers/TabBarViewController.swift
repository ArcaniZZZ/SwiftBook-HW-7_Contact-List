//
//  TabBarViewController.swift
//  SwiftBook HW 7_Contact List
//
//  Created by Arcani on 12.09.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let listOfContacts = Person.getPersons()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewControllers = self.viewControllers else { return }
        
        viewControllers.forEach {
            if let mainVC = $0 as? MainScreenViewController {
                mainVC.contacts = listOfContacts }
            else if let sectionsVC = $0 as? SectionsViewController {
                sectionsVC.contacts = listOfContacts
            }
        }
    }
}

            
  
            
