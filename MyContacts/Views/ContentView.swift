//
//  ContentView.swift
//  MyContacts
//
//  Created by Игорь Солодянкин on 05.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    private let persons = Person.getPersons()
    
    var body: some View {
        TabView {
            ContactListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            NumbersListView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
