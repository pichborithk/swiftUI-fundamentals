//
//  DimissButton.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/22/24.
//

import SwiftUI


#Preview {
    DismissButton()
}

struct DismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 44, height: 44)
                .foregroundColor(.black)
        }
    }
}

