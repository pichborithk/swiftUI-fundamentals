//
//  APButton.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/22/24.
//

import SwiftUI

#Preview {
    APButton(title: "Title")
}

struct APButton: View {
    let title : LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 260, height: 50)
            .background(.brandPrimary)
            .cornerRadius(8)
    }
}


