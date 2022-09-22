//
//  NumberListView.swift
//  ContactList_SwiftUI
//
//  Created by Алексей on 21.09.2022.
//

import SwiftUI

struct NumberListView: View {
    @State private var persons = Person.getContactList()
    
    var body: some View {
        NavigationStack {
            Form {
//                ForEach(persons) { person in
//                    /*@START_MENU_TOKEN@*/Text(person.name)/*@END_MENU_TOKEN@*/
//                }
                Section(header: Text(persons.first?.fullName ?? "user")) {
                    HStack {
                        Image(systemName: "phone")
                        Text(persons.first?.number ?? "number not found")
                    }
                    HStack {
                        Image(systemName: "tray")
                        Text(persons.first?.email ?? "email not found")
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
