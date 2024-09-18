//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Pichborith Kong on 9/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                    
            }
        }
    }
}

#Preview {
    ContentView()
}
