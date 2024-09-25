//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Pichborith Kong on 9/18/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {

//    var selectedFramework: Framework? {
//        didSet {
//            isShowingDetailView = true
//        }
//    }
    
    let columns = Array(repeating: GridItem(.flexible()), count: 3)
    let frameworks: [Framework] = MockData.frameworks
    
//    @Published var isShowingDetailView = false
}

