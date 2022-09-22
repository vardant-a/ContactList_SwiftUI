//
//  DetailView.swift
//  ContactList_SwiftUI
//
//  Created by Алексей on 21.09.2022.
//

import SwiftUI

struct DetailView: View {
    let person: Person!
    
    var body: some View {
        NavigationStack {
            Form {
                Image("")
                HStack {
                    Image(systemName: "phone")
                    Text(person.number)
                }
                HStack {
                    Image(systemName: "tray")
                    Text(person.email)
                }
            }
            .navigationTitle(person.fullName)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(person: Person.init(id: 1, firstName: "test", lastName: "2", number: "1", email: "3"))
    }
}
