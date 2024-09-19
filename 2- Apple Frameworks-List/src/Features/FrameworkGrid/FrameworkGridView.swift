//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Pichborith Kong on 9/18/24.
//

import SwiftUI

#Preview {
    FrameworkGridView()
}

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework)) {
                        FrameworkTitleView(framework: framework)
                    }
               
                }
            }
            .listStyle(.plain)

            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }
}
