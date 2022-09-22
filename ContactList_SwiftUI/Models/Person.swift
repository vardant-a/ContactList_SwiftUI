//
//  Person.swift
//  ContactList_SwiftUI
//
//  Created by Алексей on 21.09.2022.
//

import Foundation

struct Person {
    
    let firstName: String
    let lastName: String
    let number: String
    let email: String
    
    var fullName: String {
        firstName + " " + lastName
    }
    
    static func getContactList() -> [Person] {
        var contactList: [Person] = []
        
        let count = min(DataStore.shared.names.count, DataStore.shared.famyles.count, DataStore.shared.numbers.count,
                        DataStore.shared.emails.count)
        
        for index in 0..<count {
            let contact = Person(
                firstName: DataStore.shared.names[index],
                lastName: DataStore.shared.famyles[index],
                number: DataStore.shared.numbers[index],
                email: DataStore.shared.emails[index] + "@gmail.com"
            )
            
            contactList.append(contact)
        }
        
        return contactList
    }
}
