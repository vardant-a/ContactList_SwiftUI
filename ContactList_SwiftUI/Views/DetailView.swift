//
//  DetailView.swift
//  ContactList_SwiftUI
//
//  Created by Алексей on 21.09.2022.
//

import SwiftUI

struct DetailView: View {
    let person: Person!
    
    private let height = 160.0
    
    var body: some View {
        NavigationStack {
                Image("default")
                    .resizable()
                    .frame(width: height * 1.1, height: height)
                    .cornerRadius(20)
                
                Form {
                    
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
        DetailView(person: Person.init(id: 1, firstName: "title", lastName: "last", number: "1", email: "3"))
    }
}
