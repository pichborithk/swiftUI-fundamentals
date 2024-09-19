//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Pichborith Kong on 9/19/24.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode: String?
    @Published var alertItem: AlertItem?
    
    var scannedCodeText: String {
        scannedCode ?? "No Yet Scanned"
    }
    
    var scannedCodeTextColor: Color {
        scannedCode != nil ? .green : .red
    }
}
