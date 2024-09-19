//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Pichborith Kong on 9/18/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {

    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    let colums = Array(repeating: GridItem(.flexible()), count: 3)
    
    @Published var isShowingDetailView = false
}

