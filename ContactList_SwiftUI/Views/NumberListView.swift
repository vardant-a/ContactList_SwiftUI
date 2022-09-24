//
//  NumberListView.swift
//  ContactList_SwiftUI
//
//  Created by Алексей on 21.09.2022.
//

import SwiftUI

struct NumberListView: View {
    private let contactList = Person.getContactList()
    
    var body: some View {
        NavigationStack {
            List(contactList) { contact in
                    Section(header: Text(contact.fullName)) {
                        HStack {
                            Image(systemName: "phone")
                            Text(contact.number)
                        }
                        HStack {
                            Image(systemName: "tray")
                            Text(contact.email)
                        }
                    }
                }
            .navigationTitle("Contact List")
        }
    }
}

struct NumberListView_Previews: PreviewProvider {
    static var previews: some View {
        NumberListView()
    }
}
