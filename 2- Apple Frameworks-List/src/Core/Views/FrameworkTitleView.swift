//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Pichborith Kong on 9/18/24.
//


import SwiftUI

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}

struct FrameworkTitleView: View {
    let framework: Framework

    var body: some View {
        HStack(spacing: 24) {
            Image(framework.imageName)
                .resizable()
                .frame(width: 64, height: 64)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
