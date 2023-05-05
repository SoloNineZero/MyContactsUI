//
//  ContactDetailView.swift
//  MyContacts
//
//  Created by Игорь Солодянкин on 05.05.2023.
//

import SwiftUI

struct ContactDetailView: View {
    
    let person: Person
    
    var body: some View {
        Form {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                Spacer()
            }
                
            ContactRowView(image: "phone.fill", person: person.phone)
            ContactRowView(image: "tray.fill", person: person.email)
        }
        .navigationBarTitle(person.fullName)
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(person: Person.getPersons().first!)
    }
}
