//
//  AppetizerTabView.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/19/24.
//

import SwiftUI

#Preview {
    AppetizerTabView().environmentObject(Order())
}

struct AppetizerTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
//                    Image(systemName: "house")
//                    Text("Home")
                    Label("Home", systemImage: "house")
                }

            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }

            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
                .badge(order.items.count)
        }
//        .accentColor(.brandPrimary) // deprecated replace by .tint
        .tint(.brandPrimary)
    }
}
