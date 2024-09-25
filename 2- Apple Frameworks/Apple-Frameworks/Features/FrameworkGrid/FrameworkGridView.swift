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

//    var body: some View {
//        NavigationView {
//            ScrollView {
//                LazyVGrid(columns: viewModel.columns) {
//                    ForEach(MockData.frameworks) { framework in
//                        FrameworkTitleView(framework: framework)
//                            .onTapGesture {
//                                viewModel.selectedFramework = framework
//                            }
//                    }
//                }
//                .padding()
//            }
//            .navigationTitle("🍎 Frameworks")
//            .sheet(isPresented: $viewModel.isShowingDetailView) {
//                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
//            }
//        }
//    }

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(viewModel.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        }
        .accentColor(Color(.label))
    }
}
