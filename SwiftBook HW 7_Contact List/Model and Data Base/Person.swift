//
//  Person.swift
//  SwiftBook HW 7_Contact List
//
//  Created by Arcani on 12.09.2021.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    var fullname: String {
        name + " " + surname
    }
    let email: String
    let telephone: String
    
    static func getPersons() -> [Person] {
        var contacts: [Person] = []
        let contactDetails = DataManager.contactDetails
    
        for _ in contactDetails.names{
            contacts.append(Person(
                                name: contactDetails.names.randomElement() ?? "",
                                surname: contactDetails.surnames.randomElement() ?? "",
                                email: contactDetails.surnames.randomElement() ?? "",
                                telephone: contactDetails.telephones.randomElement() ?? "")
            )
        }
        return contacts
    }
}

