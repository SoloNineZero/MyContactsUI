//
//  ContactRowView.swift
//  MyContacts
//
//  Created by Игорь Солодянкин on 05.05.2023.
//

import SwiftUI

struct ContactRowView: View {
    let image: String
    let person: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
                .frame(width: 30, alignment: .leading)
            Text(person)
        }
    }
}

struct PersonRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(image: "phone.fill", person: Person.getPersons().first!.phone)
    }
}
