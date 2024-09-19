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
    var body: some View {
        NavigationView {
            VStack {
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer()
                    .frame(height: 64)
                
                Label("Scan Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text("Not Yet Scanned")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}


