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
    @State private var alertItem: AlertItem?

    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $scannedCode, alertItem: $alertItem)
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
            .alert(item: $alertItem) { alertItem in
                Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.dismissButton)
            }
        }
    }
}

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                              message: "Something is wrong with the camera. We are unable to capture the input.",
                                              dismissButton: .default(Text("OK")))
    
    static let invalidScannedType = AlertItem(title: "Invalid Scan Type",
                                              message: "The value scanned is not valid. This app scans EAN-8 and EA-13",
                                              dismissButton: .default(Text("OK")))
}
