//
//  AppetizersListViewModel.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/21/24.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []

    func getAppetizers() {
//        appetizers = MockData.appetizers
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case let .success(appetizers):
                    self.appetizers = appetizers
                case let .failure(error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}
