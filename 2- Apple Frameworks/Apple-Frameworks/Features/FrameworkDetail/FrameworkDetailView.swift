//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Pichborith Kong on 9/18/24.
//

import SwiftUI

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
//    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(true))
}

struct FrameworkDetailView: View {
    let framework: Framework
//    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false

    var body: some View {
        VStack(spacing: 24) {
//            DismissButton(isShowingModal: $isShowingDetailView)
//
//            Spacer()

            FrameworkTitleView(framework: framework)

            Text(framework.description)
                .font(.body)
                .padding()

            Spacer()

            Button {
                isShowingSafariView = true
            } label: {
//                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
        }
        .padding()
//        .sheet(isPresented: $isShowingSafariView) {
//            SafariView(url: URL(string: framework.urlString)!)
//        }
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString)!)
        }
    }
}


