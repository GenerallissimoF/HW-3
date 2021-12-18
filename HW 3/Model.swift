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
               hometown: "Архангельск",
               education: "исторический и юридический факультеты",
               occupation: "руководитель отдела продаж IT-компании")
}
}

struct Person {
    let nameAndSurname: String
    var dateOfbirth: String
    let hometown: String
    let education: String
    let occupation: String
}
