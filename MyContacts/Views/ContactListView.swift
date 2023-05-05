//
//  ContactListView.swift
//  MyContacts
//
//  Created by Игорь Солодянкин on 05.05.2023.
//

import SwiftUI

struct ContactListView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(destination: ContactDetailView(person: person)) {
                    Text(person.fullName)
                }
            }
            .navigationBarTitle("Contact List")
            .listStyle(.plain)
            
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getPersons())
    }
}
