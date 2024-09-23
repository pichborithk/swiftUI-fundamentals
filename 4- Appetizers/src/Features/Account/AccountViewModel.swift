//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/23/24.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthDate = Date()
    @Published var extraNapkins = false
    @Published var frequentRefills = true
    @Published var alertItem: AlertItem?

    var isValidFrom: Bool {
        if firstName.isEmpty || lastName.isEmpty || email.isEmpty {
            alertItem = AlertContext.invalidForm
            return false
        }

        guard email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }

        return true
    }
    
    func saveChanges() {
        guard isValidFrom else { return }
        
        print("Change saved successfully")
    }
}
