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

    var body: some View {
        VStack(spacing: 24) {
            HStack {
                Spacer()

                Button {
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 40, height: 40)
                }
            }.padding()

            Spacer()

            FrameworkTitleView(framework: framework)

            Text(framework.description)
                .font(.body)

            Spacer()

            AFButton(title: "Learn More")
        }.padding()
    }
}
