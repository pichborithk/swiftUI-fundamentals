//
//  AppetizerCard.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/22/24.
//

import SwiftUI

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}


struct AppetizerDetailView: View {
    var appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: appetizer.imageUrl)) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView() // Shows a loading spinner while the image is loading
                    .tint(.brandPrimary)
            }
            
            Text(appetizer.name)
                .font(.title2)
                .fontWeight(.semibold)
            
            Text(appetizer.description)
                .multilineTextAlignment(.center)
                .font(.body)
            
            HStack(spacing: 36) {
                NutritionInfo(title: "Calories", value: appetizer.calories)
                
                NutritionInfo(title: "Protein", value: appetizer.protein)
                
                NutritionInfo(title: "Carbs", value: appetizer.carbs)
            }
            .padding()
            
            Spacer()
            
            Button {
                print("tapped")
            } label: {
                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add To Order")
            }
            .padding(.bottom,24)
          
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            DismissButton()
        }, alignment: .topTrailing)
    }
}


struct NutritionInfo: View {
    
    let title: String
    let value: Int
    
    var body: some View {
        VStack {
            Text("Calories")
                .bold()
                .font(.caption)
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
