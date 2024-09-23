//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/19/24.
//

import SwiftUI

#Preview {
    AppetizerListView()
}

struct AppetizerListView: View {
    @StateObject private var viewModel = AppetizerListViewModel()

    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .alignmentGuide(.listRowSeparatorLeading) { _ in -20 }
                }
                .listStyle(.plain)
                .navigationTitle("🍟 Appetizers")
            }
    //        .onAppear(perform: getAppetizers)
            .onAppear {
                viewModel.getAppetizers()
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}
