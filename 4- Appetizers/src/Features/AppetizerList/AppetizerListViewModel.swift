//
//  AppetizersListViewModel.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/21/24.
//

import SwiftUI

//final class AppetizerListViewModel: ObservableObject {
@MainActor final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetails: Bool = false
    @Published var selectedAppetizer: Appetizer?

//    func getAppetizers() {
//        isLoading = true
    ////        appetizers = MockData.appetizers
//        NetworkManager.shared.getAppetizers { result in
//            DispatchQueue.main.async { [self] in
//                switch result {
//                case let .success(appetizers):
//                    self.appetizers = appetizers
//                case let .failure(error):
//                    switch error {
//                    case .invalidURL:
//                        alertItem = AlertContext.invalidURL
//                    case .invalidResponse:
//                        alertItem = AlertContext.invalidResponse
//                    case .invalidData:
//                        alertItem = AlertContext.invalidData
//                    case .unableToComplete:
//                        alertItem = AlertContext.unableToComplete
//                    }
//                }
//
//                isLoading = false
//            }
//        }
//    }

    func getAppetizers() async {
        isLoading = true
        
        defer {
            isLoading = false
        }
        
        do {
            appetizers = try await NetworkManager.shared.getAppetizers()
        } catch {
            if let apError = error as? APError {
                switch apError {
                case .invalidURL:
                    alertItem = AlertContext.invalidURL
                case .invalidResponse:
                    alertItem = AlertContext.invalidResponse
                case .invalidData:
                    alertItem = AlertContext.invalidData
                case .unableToComplete:
                    alertItem = AlertContext.unableToComplete
                }
            } else {
                alertItem = AlertContext.unableToComplete
            }
        }
    }
}
