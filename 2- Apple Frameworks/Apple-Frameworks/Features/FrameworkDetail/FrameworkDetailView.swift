//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Pichborith Kong on 9/18/24.
//

import SwiftUI

#Preview {
    FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework))
//    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(true))
}

struct FrameworkDetailView: View {
//    let framework: Framework
//    @Binding var isShowingDetailView: Bool
//    @State private var isShowingSafariView: Bool = false
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack(spacing: 24) {
//            DismissButton(isShowingModal: $isShowingDetailView)
//
//            Spacer()

            FrameworkTitleView(framework: viewModel.framework)

            Text(viewModel.framework.description)
                .font(.body)
                .padding()

            Spacer()

            Button {
                viewModel.isShowingSafariView = true
            } label: {
//                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
            
            // This is go to browser
            Link(destination: URL(string: viewModel.framework.urlString)!){
                Label("Learn More", systemImage: "book.fill")
            }
                .buttonStyle(.bordered)
                .controlSize(.large)
                .tint(.blue)
            
        }
        .padding()
//        .sheet(isPresented: $isShowingSafariView) {
//            SafariView(url: URL(string: framework.urlString)!)
//        }
        .fullScreenCover(isPresented: $viewModel.isShowingSafariView) {
            SafariView(url: URL(string: viewModel.framework.urlString)!)
        }
    }
}


