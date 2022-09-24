//
//  ContactListView.swift
//  ContactList_SwiftUI
//
//  Created by Алексей on 21.09.2022.
//

import SwiftUI

struct ContactListView: View {
    
    private let contactList = Person.getContactList()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(contactList) { contact in
                    NavigationLink(contact.fullName) {
                        DetailView(person: contact)
                    }
                }
            }
                .navigationTitle("Contact List")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}
