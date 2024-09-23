//
//  Alert.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/22/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    // MARK: - Network Alert
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                      message: Text("There was an issue connecting to the server. Please contact support"),
                                      dismissButton: .default(Text("OK")))

    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                              message: Text("Invaild response from the server. Please contact support"),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidData = AlertItem(title: Text("Server Error"),
                                              message: Text("The data received from the server is invalid. Please contact support"),
                                              dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                              message: Text("Unable to complete the request. Please check your internet connection and try again."),
                                              dismissButton: .default(Text("OK")))
    
    // MARK: - Form Alert
    
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                              message: Text("Please fill out all fields."),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                              message: Text("Please enter a valid email address."),
                                              dismissButton: .default(Text("OK")))
}
