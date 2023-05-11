import SwiftUI

struct Feature: View {
    
    let imageName: String
    let title: String
    let description: String
    
    var body: some View {
        HStack(spacing: 17) {
            Image(systemName: imageName)
                .scaledToFit()
                .frame(width: 40, height: 40)
                .padding(8)
                .foregroundColor(.primary)
                .background {
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .foregroundColor(.accentColor.opacity(0.2))
                }
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.title3)
                    .bold()
                Text(description)
                    .font(.subheadline)
                    .lineSpacing(-10)
            }
        }
    }
}
