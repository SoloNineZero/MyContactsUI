//
//  NumbersListView.swift
//  MyContacts
//
//  Created by Игорь Солодянкин on 05.05.2023.
//

import SwiftUI

struct NumbersListView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons) { person in
                    Section(header: Text(person.fullName)) {
                        ContactRowView(
                            image: "phone.fill",
                            person: person.phone
                        )
                        ContactRowView(
                            image: "tray.fill",
                            person: person.email
                        )
                    }
                }
                .textCase(.none)
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct NumbersListView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersListView(persons: Person.getPersons())
    }
}
