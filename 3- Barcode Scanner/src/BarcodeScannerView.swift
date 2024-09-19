//
//  BarcodeScannerView.swift
//  BarcodeScanner
//
//  Created by Pichborith Kong on 9/19/24.
//

import SwiftUI

#Preview {
    BarcodeScannerView()
}

struct BarcodeScannerView: View {
    
    @State private var scannedCode: String?
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer()
                    .frame(height: 64)
                
                Label("Scan Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(scannedCode ?? "Not Yet Scanned")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(scannedCode != nil ? .green : .red)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}


