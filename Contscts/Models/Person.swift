//
//  Person.swift
//  Contscts
//
//  Created by Rimma Katushina on 27/02/2023.
//
import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        
        var sortedNames: Set = [""]
        var sortedSurnames: Set = [""]
        var sortedEmails: Set = [""]
        var sortedPhones: Set = [""]

        var persons: [Person] = []
    
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        
        for _ in 0..<DataStore.shared.names.count {
            let name = checkUnique(data: names, checkAtribut: &sortedNames)
            let surname = checkUnique(data: surnames, checkAtribut: &sortedSurnames)
            let email = checkUnique(data: emails, checkAtribut: &sortedEmails)
            let phone = checkUnique(data: phones, checkAtribut: &sortedPhones)
            
            let person = Person(
                name: name!,
                surname: surname!,
                email: email!,
                phone: phone!
            )
            persons.append(person)
        }
        return persons
    }
}

func checkUnique(data: Array<String>, checkAtribut: inout Set<String>) -> String? {
    for elment in data {
        if !checkAtribut.contains(elment) {
            checkAtribut.insert(elment)
    return elment
        }
    }
    return nil
}
