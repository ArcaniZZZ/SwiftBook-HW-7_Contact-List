//
//  SectionsViewController.swift
//  SwiftBook HW 7_Contact List
//
//  Created by Arcani on 12.09.2021.
//

import UIKit

class SectionsViewController: UITableViewController {
    
    var contacts: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
}
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Person", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        let contact = contacts[indexPath.row]
        
        content.text = contact.fullname
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? ContactDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let contact = contacts[indexPath.row]
        detailsVC.contact = contact
    }
    
}
