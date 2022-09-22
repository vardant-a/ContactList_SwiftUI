//
//  ContactListView.swift
//  ContactList_SwiftUI
//
//  Created by Алексей on 21.09.2022.
//

import SwiftUI

struct ContactListView: View {
    
    @State private var contactList = Person.getContactList()
    
    var body: some View {
        NavigationStack {
            Form {
                ForEach(contactList, id: \.id) { contact in
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
