//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Pichborith Kong on 9/18/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {

    var selectedFramework: Framework?
    
    let colums = Array(repeating: GridItem(.flexible()), count: 3)
    
}

