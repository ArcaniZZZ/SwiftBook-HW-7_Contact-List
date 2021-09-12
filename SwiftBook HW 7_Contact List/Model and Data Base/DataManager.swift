//
//  DataManager.swift
//  SwiftBook HW 7_Contact List
//
//  Created by Arcani on 12.09.2021.
//

import Foundation

class DataManager {
    static let contactDetails = DataManager()
    
    var names = ["John", "Steven", "Nancy", "Helen", "Ivan", "Alex", "Hermione"]
    var surnames = ["Appleseed", "Granger", "Pop", "Johnson", "Gaskoine", "Obama", "Biden"]
    var emails = ["1@mail.ru", "2@mail.ru", "3@mail.ru", "4@mail.ru", "5@mail.ru", "6@mail.ru", "7@mail.ru"]
    var telephones = ["+1-777", "+2-777", "+3-777", "+4-777", "+5-777", "+6-777", "+7-777"]
    
    private init() {}
}
