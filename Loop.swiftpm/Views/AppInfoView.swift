import SwiftUI

struct AppInfoView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
            VStack(alignment: .center, spacing: 2) {
                CloseButton { dismiss() }
                appIconAndTitle
                features
                developerInfo
                projectInfo
            }
            .padding(32)
    }
    
    var appIconAndTitle: some View {
        VStack {
            Image("icon")
                .resizable()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .padding()
            Text("Loop")
                .font(.title2)
                .fontWeight(.semibold)
            Text("Learn recycling, in a fun and interactive way.")
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
    }
    
    var features: some View {
        VStack(alignment: .leading, spacing: 32) {
            Feature(imageName: "book.fill", title: "Learn", description: "Discover facts and tips about recycling different materials")
            Feature(imageName: "gamecontroller.fill", title: "Play", description: "Test your recycling knowledge with a fun and interactive quiz")
            Feature(imageName: "hand.raised.fill", title: "Apply", description: "Put your new recycling skills into practice and make a positive impact on the environment")
        }
        .frame(maxHeight: .infinity, alignment: .center)
    }
    
    var developerInfo: some View {
        Text("Developed with ❤️ in 🇮🇹 by [Alessandro Bortoluzzi](https://bento.me/bortoluzzi)")
            .font(.subheadline)
            .multilineTextAlignment(.center)
    }
    
    var projectInfo: some View {
        Text("WWDC23 Swift Student Challenge Project")
            .font(.footnote)
            .foregroundColor(.secondary)
    }
}
