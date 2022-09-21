//
//  ContactListView.swift
//  ContactList_SwiftUI
//
//  Created by Алексей on 21.09.2022.
//

import SwiftUI

struct ContactListView: View {
    var body: some View {
        NavigationStack {
            Form {
                NavigationLink("Посмотреть хлебушек") {
                    DetailView(person: .constant("Хлебушек"))
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
