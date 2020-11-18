import SwiftUI

class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String { scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode }
    var statusTextColor: Color { scannedCode.isEmpty ? .green : .red }
    
    let navigationTitle = "Barcode scanner"
}
