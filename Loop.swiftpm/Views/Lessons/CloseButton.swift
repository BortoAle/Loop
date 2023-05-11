import SwiftUI

struct CloseButton: View {
    
    let action: () -> Void
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: action, label: {
                Image(systemName: "xmark")
                    .font(.headline)
                    .foregroundColor(.secondary)
                    .padding(8)
            })   
            .background(
                Circle()
                    .foregroundColor(Color(uiColor: .secondarySystemBackground))
            )
        }
    }
}
