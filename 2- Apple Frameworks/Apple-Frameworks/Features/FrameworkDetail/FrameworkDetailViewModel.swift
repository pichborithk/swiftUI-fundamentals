//
//  FrameworkDetailViewModel.swift
//  Apple-Frameworks
//
//  Created by Pichborith Kong on 9/24/24.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    
    let framework: Framework
//    var isShowingDetailView: Binding<Bool>
    @Published var isShowingSafariView = false
    
//    init(framework: Framework, isShowingDetailView: Binding<Bool>) {
    init(framework: Framework) {
        self.framework = framework
//        self.isShowingDetailView = isShowingDetailView
    }
    
    
}
