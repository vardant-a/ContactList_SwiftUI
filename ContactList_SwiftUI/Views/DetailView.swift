//
//  DetailView.swift
//  ContactList_SwiftUI
//
//  Created by Алексей on 21.09.2022.
//

import SwiftUI

struct DetailView: View {
    @Binding var person: String
    
    var body: some View {
        NavigationStack {
            Text("Пользователь")
                .navigationTitle(person)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(person: .constant("text"))
    }
}
