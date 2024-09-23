//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/23/24.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var userData: Data?
    
    @Published var user = User()
    @Published var alertItem: AlertItem?

    var isValidFrom: Bool {
        if user.firstName.isEmpty || user.lastName.isEmpty || user.email.isEmpty {
            alertItem = AlertContext.invalidForm
            return false
        }

        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }

        return true
    }
    
    func saveChanges() {
        guard isValidFrom else { return }
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    
    func retrieveUser() {
        guard let userData else { return }
        
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
}
