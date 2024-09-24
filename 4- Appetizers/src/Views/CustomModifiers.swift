//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/24/24.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

extension View {
    func standardButtonStyle() -> some View {
        modifier(StandardButtonStyle())
    }
}
