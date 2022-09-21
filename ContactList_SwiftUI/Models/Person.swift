//
//  Person.swift
//  ContactList_SwiftUI
//
//  Created by Алексей on 21.09.2022.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let number: String
    let email: String
    
    var fullName: String {
        name + " " + surname
    }
    
    static func getContactList() -> [Person] {
        return [
            Person(
                name: "Кирилл",
                surname: "Терребин",
                number: "1291242",
                email: "xleb"
            )
        ]
    }
}
