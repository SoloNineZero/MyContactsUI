//
//  Person.swift
//  MyContacts
//
//  Created by Игорь Солодянкин on 05.05.2023.
//

struct Person: Identifiable {
    
    let id: Int
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(surname) \(name)"
    }
}

extension Person {
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        
        // Наименьшее количество элементов
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for person in 0..<iterationCount {
            let person = Person(
                id: person + 1,
                name: names[person],
                surname: surnames[person],
                email: emails[person],
                phone: phones[person]
            )
            persons.append(person)
        }
        return persons
    }
}
