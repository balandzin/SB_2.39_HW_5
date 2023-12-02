//
//  User.swift
//  HW_5
//
//  Created by Антон Баландин on 2.12.23.
//

struct User {
    let userName = "User"
    let password = "Password"
    let person: Person
    
    static func getUser() -> User {
        User(
            person: Person(
                name: "Anton",
                surname: "Balandzin",
                age: "33",
                country: "Belarus",
                city: "Orsha",
                hobbies: "Long-distance running",
                work: "Belarus Ministry for Emergency Situations"
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: String
    let country: String
    let city: String
    let hobbies: String
    let work: String
}


