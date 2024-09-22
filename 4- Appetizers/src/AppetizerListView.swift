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
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
                    .alignmentGuide(.listRowSeparatorLeading) { _ in -20 }
            }
            .listStyle(.plain)
            .navigationTitle("🍟 Appetizers")
        }
    }
}


