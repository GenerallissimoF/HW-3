//
//  File.swift
//  HW 3
//
//  Created by Ivan Adoniev on 18.12.2021.
//

import Foundation
import UIKit
struct User {
    let login: String
    let password: String
    var person: Person
    
    static func getPerson() -> Person {
        Person(nameAndSurname: "Иван Адоньев",
               dateOfbirth: "25 апреля 1985",
               someFacts: """
               ✅Родился и живу в г. Архангельск.
               ✅Два высших гуманитарных образования.
               ✅Руководитель отдела продаж IT-компании.
               ✅Воспитываю дочь.
               """)
}
}

struct Person {
    let nameAndSurname: String
    var dateOfbirth: String
    let someFacts: String
   
}
