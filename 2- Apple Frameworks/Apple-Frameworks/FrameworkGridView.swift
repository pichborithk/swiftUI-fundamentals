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

    let colums = Array(repeating: GridItem(.flexible()), count: 3)

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: colums) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }.padding()
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

struct FrameworkTitleView: View {
    let framework: Framework

    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 80, height: 80)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
