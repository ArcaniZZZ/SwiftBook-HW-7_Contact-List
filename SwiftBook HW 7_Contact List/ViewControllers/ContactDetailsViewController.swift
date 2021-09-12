//
//  ContactDetailsViewController.swift
//  SwiftBook HW 7_Contact List
//
//  Created by Arcani on 12.09.2021.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var fullName: UILabel!
    @IBOutlet var telephone: UILabel!
    @IBOutlet var email: UILabel!
    
    
    
    
    var contact: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        fullName.text = contact.fullname
        telephone.text = contact.telephone
        email.text = contact.email
    }

}
