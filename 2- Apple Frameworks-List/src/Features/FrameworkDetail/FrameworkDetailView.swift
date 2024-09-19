//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Pichborith Kong on 9/18/24.
//

import SwiftUI

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}

struct FrameworkDetailView: View {
    let framework: Framework
    @State private var isShowingSafariView: Bool = false

    var body: some View {
        VStack(spacing: 24) {

            Spacer()

            FrameworkTitleView(framework: framework)

            Text(framework.description)
                .font(.body)
                .padding()

            Spacer()

            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
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


