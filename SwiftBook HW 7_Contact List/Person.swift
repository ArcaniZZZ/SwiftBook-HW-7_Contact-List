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

    static func getPerson(name: String, surname: String, email: String, telephone: String) -> Person {
        Person(
            name: name,
            surname: surname,
            email: email,
            telephone: telephone
        )
    }
}

