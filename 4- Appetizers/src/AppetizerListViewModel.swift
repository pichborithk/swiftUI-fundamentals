//
//  AppetizersListViewModel.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/21/24.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false

    func getAppetizers() {
        isLoading = true
//        appetizers = MockData.appetizers
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async { [self] in
                switch result {
                case let .success(appetizers):
                    self.appetizers = appetizers
                case let .failure(error):
                    switch error {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }

                isLoading = false
            }
        }
    }
}
