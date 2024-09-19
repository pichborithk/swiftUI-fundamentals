//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Pichborith Kong on 9/18/24.
//

import SwiftUI

#Preview {
    AFButton(title: "Learn More")
}

struct AFButton: View {
    let title: String

    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 240, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
