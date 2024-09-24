//
//  EmptyState.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/23/24.
//

import SwiftUI

#Preview {
    EmptyState(imageName: "empty-order", message: "No order yet")
}


struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 160)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -64)
            
        }
    }
}

