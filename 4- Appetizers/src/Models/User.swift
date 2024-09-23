//
//  User.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/23/24.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = true
}
