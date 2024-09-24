//
//  OrderView.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/19/24.
//

import SwiftUI

#Preview {
    OrderView()
}

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(orderItems) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                            .alignmentGuide(.listRowSeparatorLeading) { _ in -20 }
                    }
                    .onDelete(perform: { indexSet in
                        orderItems.remove(atOffsets: indexSet)
                    })
                }
                .listStyle(.plain)

                Button {
                    print("Order Placed")
                } label: {
                    APButton(title: "$99.99 - Place Order")
                }
                .padding(.bottom, 24)
            }
            .navigationTitle("📄 Orders")
        }
    }
}
