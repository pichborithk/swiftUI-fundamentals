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
    
    @StateObject var viewModel = BarcodeScannerViewModel()

    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)

                Spacer()
                    .frame(height: 64)

                Label("Scan Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)

                Text(viewModel.scannedCodeText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.scannedCodeTextColor)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.dismissButton)
            }
        }
    }
}



