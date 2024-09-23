//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/21/24.
//


import SwiftUI

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}

struct AppetizerListCell: View {
    let appetizer: Appetizer

    var body: some View {
        HStack {
            AsyncImage(url: URL(string: appetizer.imageUrl)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 80)
                    .cornerRadius(10)
                    .clipped()
            } placeholder: {
                ProgressView() // Shows a loading spinner while the image is loading
                    .tint(.brandPrimary)
            }
            .frame(width: 120, height: 80)

            VStack(alignment: .leading) {
                Text(appetizer.name)
                    .font(.title3)
                    .fontWeight(.medium)
                Text("$ " + String(format: "%.2f", appetizer.price))
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
//        .padding(EdgeInsets(top: -10, leading: -10, bottom: -10, trailing: 0))
    }
}
