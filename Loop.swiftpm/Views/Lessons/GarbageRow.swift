import SwiftUI

struct GarbageRow: View {
    
    let garbageName: String
    let garbageColor: Color
    let garbageSymbolName: String
    
    var body: some View {
            HStack(spacing: 16) {
                Image(systemName: garbageSymbolName)
                    .foregroundColor(garbageColor)
                Text(garbageName)
                    .foregroundColor(.primary)
            }
            .padding(.vertical, 8)
    }
}
