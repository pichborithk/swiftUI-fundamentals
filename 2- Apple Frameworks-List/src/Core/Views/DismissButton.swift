//
//  DismissButton.swift
//  Apple-Frameworks
//
//  Created by Pichborith Kong on 9/18/24.
//


import SwiftUI

#Preview {
    DismissButton(isShowingModal: .constant(true))
}

struct DismissButton: View {
    @Binding var isShowingModal: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowingModal = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 40, height: 40)
            }
        }
        .padding()
    }
}
