import SwiftUI

struct RecordCard: View {
    
    let text: String
    let action: () -> Void
    
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                Text(text)
                    .multilineTextAlignment(.center)
            }
            Button(action: action, label: {
                HStack {
                    Image(systemName: "gobackward")
                    Text("Reset Record")
                }
            })
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .foregroundColor(Color(uiColor: .secondarySystemBackground))
        }
    }
}
