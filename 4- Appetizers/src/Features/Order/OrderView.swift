//
//  OrderView.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/19/24.
//

import SwiftUI

#Preview {
    OrderView().environmentObject(Order())
}

struct OrderView: View {
    
//    @State private var orderItems = MockData.orderItems
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                                .alignmentGuide(.listRowSeparatorLeading) { _ in -20 }
                        }
                        .onDelete(perform: order.remove)
                    }
                    .listStyle(.plain)

                    Button {
                        print("Order Placed")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 24)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "No Orders Yet")
                }
            }
            .navigationTitle("📄 Orders")
        }
    }
}
